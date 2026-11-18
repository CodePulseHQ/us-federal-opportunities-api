---
layout: default
title: "How to get SAM.gov contract opportunities without an API key"
description: "SAM.gov publishes a public daily extract of every active contract opportunity. How to use it, what is in it, and how to search it by keyword, NAICS and set-aside."
---

# How to get SAM.gov contract opportunities without an API key

**Short answer:** you don't need the SAM.gov API for opportunities. SAM.gov publishes a public daily extract of every active contract opportunity as a CSV file, and the Actor searches it for you.

```bash
export APIFY_TOKEN=...   # free Apify account: Console > Settings > API & Integrations

curl -sS -X POST \
  "https://api.apify.com/v2/acts/codepulsehq~us-federal-opportunities-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"sources": ["contracts"], "keywords": ["cybersecurity"], "naics": ["5415"], "postedWithinDays": 14, "maxResults": 20}'
```

## What is in the extract

About 73,000 active notices, with 47 columns: title, solicitation number, agency, sub-tier and office, notice type, posted date, response deadline, NAICS and PSC codes, set-aside, place of performance, the contracting officer's name and email, a link to the notice, and the description. The Actor returns the useful fields as clean JSON and adds `days_until_deadline` and which of your keywords matched (title matches are listed first).

## The SAM.gov API, and why people avoid it

The official opportunities API needs an API key tied to a SAM.gov account, has request limits, and requires a date range on every call. It's fine for a server that stays inside those limits, and awkward for ad-hoc searches or spreadsheets.

## Doing it yourself

The extract is a single CSV (about 220 MB) at `https://s3.amazonaws.com/falextracts/Contract%20Opportunities/datagov/ContractOpportunitiesFullCSV.csv`, refreshed overnight US time. Stream it to disk, read it with a CSV parser that handles quoted newlines (descriptions contain them), and filter. It downloads in about ten seconds.

## Good to know

- Keyword search is plain text matching. Boilerplate in a description (a cybersecurity clause in a parts solicitation, for example) can match, which is why title matches are ranked first.
- Attachments (the solicitation documents) aren't in the extract. Each row links to the notice on SAM.gov.
- Data is as of the last overnight extract, not live.

Ready-made page: [find SAM.gov contract opportunities by keyword](https://apify.com/codepulsehq/us-federal-opportunities-api/examples/find-sam-gov-contract-opportunities).

# US Federal Opportunities API: examples and guides

Find US government work before your competitors do: contract opportunities from SAM.gov, grants from Grants.gov and past awards from USAspending, filtered by keyword, NAICS code, agency, state and set-aside. No API key.

This repository contains runnable examples and how-to guides for the **[US Federal Opportunities API on Apify](https://apify.com/codepulsehq/us-federal-opportunities-api)**, made by [CodePulse](https://codepulsehq.com). The examples call that hosted Actor, so you need a free [Apify](https://apify.com) account and API token. The code here is MIT licensed; the Actor is a paid, hosted service. $0.003 per contract or grant opportunity and $0.002 per award. Errors are free.

**Try it free:** Apify's free plan includes $5 of monthly credit, so you can run the Actor on real data before paying anything. [Start here](https://apify.com/codepulsehq/us-federal-opportunities-api).

**Read the guides as a website:** [codepulsehq.github.io/us-federal-opportunities-api](https://codepulsehq.github.io/us-federal-opportunities-api/)

## Quick start

```bash
export APIFY_TOKEN=...   # free Apify account: Console > Settings > API & Integrations

curl -sS -X POST \
  "https://api.apify.com/v2/acts/codepulsehq~us-federal-opportunities-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"sources": ["contracts"], "keywords": ["cybersecurity"], "naics": ["5415"], "postedWithinDays": 14, "maxResults": 20}'
```

## Guides

| Question | Guide |
|---|---|
| How to get SAM.gov contract opportunities without an API key | [docs/sam-gov-opportunities-without-api-key.md](docs/sam-gov-opportunities-without-api-key.md) |
| How to get daily alerts for new federal contract opportunities | [docs/daily-alerts-new-federal-contracts.md](docs/daily-alerts-new-federal-contracts.md) |
| How to search Grants.gov opportunities through an API | [docs/find-grants-gov-opportunities-api.md](docs/find-grants-gov-opportunities-api.md) |
| How to find who won federal contracts using USAspending data | [docs/who-won-federal-contracts-usaspending.md](docs/who-won-federal-contracts-usaspending.md) |
| NAICS codes and federal set-aside codes explained | [docs/naics-codes-and-set-asides-explained.md](docs/naics-codes-and-set-asides-explained.md) |

## Examples

| File | What it does |
|---|---|
| [`examples/curl/quickstart.sh`](examples/curl/quickstart.sh) | One request, results back |
| [`examples/python/quickstart.py`](examples/python/quickstart.py) | The same with the Apify Python client, with a spend cap |

## Frequently asked questions

**Do I need a SAM.gov API key?** No. The Actor reads the public daily extract of active contract opportunities that SAM.gov publishes.

**How fresh is the data?** Contract opportunities are as fresh as SAM.gov's overnight extract. Grants come live from Grants.gov. Awards trail real events because agencies report with a delay.

**What does it cost?** $0.003 per contract or grant opportunity, $0.002 per award. Errors are free and you can cap spend per run.

**Is the data official?** Yes: SAM.gov, Grants.gov and USAspending.gov. This project is not affiliated with or endorsed by the US government.

## More from CodePulse

- [YouTube Transcript API](https://apify.com/codepulsehq/youtube-transcript-api): Transcripts of any YouTube video, playlist or channel.
- [SEC EDGAR API](https://apify.com/codepulsehq/sec-edgar-api): 10-K text as Markdown, financials, insider trades and 13F holdings.
- [Domain Intelligence API](https://apify.com/codepulsehq/domain-intelligence-api): WHOIS expiry, DNS, SSL, SPF/DKIM/DMARC and tech stack in bulk.
- [Speech to Text API](https://apify.com/codepulsehq/speech-to-text-api): Transcribe audio and video links with Whisper, from $0.24 an hour.

## Feedback

Found a problem or want an example added? Open an issue here, or use the **Issues** tab on the Actor's Apify page.

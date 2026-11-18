---
layout: default
title: "How to find who won federal contracts using USAspending data"
description: "Find which companies won federal contracts matching your keywords, with amounts, agencies and dates, for competitor and incumbent research before you bid."
---

# How to find who won federal contracts using USAspending data

**Short answer:** USAspending.gov is the official record of federal awards. Search it by keyword, agency, NAICS code and amount to see who won similar work, for how much, and when.

```bash
curl -sS -X POST \
  "https://api.apify.com/v2/acts/codepulsehq~us-federal-opportunities-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"sources": ["awards"], "keywords": ["cybersecurity"], "minAmount": 5000000, "awardedWithinDays": 365, "maxResults": 50}'
```

```json
{ "source": "USAspending", "recipient": "MAVERIS LLC", "amount": 219100000, "agency": "Department of Veterans Affairs",
  "description": "VA CYBERSECURITY OPERATIONS CENTER NEXT GENERATION", "url": "https://www.usaspending.gov/award/..." }
```

## Using it to prepare a bid

1. Search awards for your capability with a minimum value close to your target.
2. Note repeat winners: they're the incumbents.
3. Look at the awarding sub-agency and how long previous contracts ran. A contract ending soon will be recompeted.
4. Switch to `contracts` with the same keywords and NAICS to find the live opportunity.

## Things to know

- **Reporting delay.** Agencies report awards late; the latest weeks are incomplete.
- **Amounts are obligations**, not necessarily what was paid, and a single award may be modified many times.
- **Keyword search is plain text** over award descriptions, which are often terse and in capitals.

## Doing it yourself

`POST https://api.usaspending.gov/api/v2/search/spending_by_award/` with filters for keywords, `award_type_codes` (A to D for contracts), a `time_period`, optional `award_amounts` and `naics_codes`, and paging. No key is required.

Ready-made page: [who wins federal contracts](https://apify.com/codepulsehq/us-federal-opportunities-api/examples/who-wins-federal-contracts).

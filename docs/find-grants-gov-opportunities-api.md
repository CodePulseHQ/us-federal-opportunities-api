---
layout: default
title: "How to search Grants.gov opportunities through an API"
description: "Search open federal grants by keyword with award ceilings, deadlines and eligibility, using Grants.gov's public API or the Actor."
---

# How to search Grants.gov opportunities through an API

**Short answer:** Grants.gov has an open search API that needs no key. The Actor wraps it, fetches the full detail of each grant, and returns one clean row per opportunity.

```bash
curl -sS -X POST \
  "https://api.apify.com/v2/acts/codepulsehq~us-federal-opportunities-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"sources": ["grants"], "keywords": ["artificial intelligence"], "minAmount": 500000, "maxResults": 25}'
```

```json
{ "source": "Grants.gov", "title": "Fiscal Years 2025 and 2026 Congestion Relief Program", "agency": "DOT Federal Highway Administration",
  "number": "FHWA-CRPP-27-001", "close_date": "12/17/2026", "days_until_close": 29, "award_ceiling": 100000000, "award_floor": 10000000,
  "eligible_applicants": ["State governments"], "url": "https://www.grants.gov/search-results-detail/364277" }
```

## What the Grants.gov API gives you

A search endpoint returns a page of hits with title, number, agency and dates. For ceilings, floors, estimated funding, eligibility and the agency contact you need a second call per grant to the opportunity-detail endpoint. The Actor makes both calls and merges them.

## Tips

- **Filter by size:** `minAmount` hides grants whose award ceiling is below your threshold.
- **Include forecasts:** forecasted opportunities (not yet posted) are included while `onlyOpen` is on; turn it off to see closed and archived grants too.
- **Agency filter:** pass part of an agency name or code in `agencies`.

## Doing it yourself

`POST https://api.grants.gov/v1/api/search2` with `{"keyword": "...", "oppStatuses": "forecasted|posted", "rows": 25}`, then `POST https://api.grants.gov/v1/api/fetchOpportunity` with the opportunity ID for the details.

Ready-made page: [search federal grant opportunities on Grants.gov](https://apify.com/codepulsehq/us-federal-opportunities-api/examples/federal-grants-search).

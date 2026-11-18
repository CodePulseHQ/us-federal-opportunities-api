---
layout: default
title: "How to get daily alerts for new federal contract opportunities"
description: "Set up a daily alert for new federal contract opportunities in your NAICS code or keywords, delivered to email, Slack or a spreadsheet."
---

# How to get daily alerts for new federal contract opportunities

**Short answer:** run the Actor every day with *Posted in the last (days)* set to 1, and send the results to email, Slack or a Google Sheet. You only get what was posted since yesterday.

## Setup in four steps

1. Open the [Actor](https://apify.com/codepulsehq/us-federal-opportunities-api) and fill in your filters: keywords, NAICS codes, set-asides (SBA, 8A, HZC, SDVOSBC, WOSB), states, notice types.
2. Set **Posted in the last (days)** to `1`.
3. Save the input as a **Task**, then add a **Schedule** (for example every day at 09:00).
4. In the task's **Integrations** tab, connect Gmail, Slack, Google Sheets or a webhook.

Example input for new small-business software opportunities:

```json
{ "sources": ["contracts"], "keywords": ["software", "cloud"], "naics": ["5415"], "setAsides": ["SBA"], "postedWithinDays": 1, "maxResults": 200 }
```

## Tips

- **Start broad, then tighten.** Run it once with `postedWithinDays: 30` to see what a month looks like before you schedule it.
- **Deadlines:** `days_until_deadline` lets you sort by urgency; `closingWithinDays` hides anything due later than you care about.
- **Grants too:** add `"grants"` to `sources` to include Grants.gov opportunities in the same alert.
- **Cost control:** set a maximum cost per run; a busy day can't surprise you.

## Doing it yourself

Download the SAM.gov extract each morning, keep the notice IDs you've already seen, and send the difference. The Actor does this filtering for you; the "seen" bookkeeping is the part you'd need to add yourself if you build it from scratch.

Ready-made page: [new federal opportunities posted in the last day](https://apify.com/codepulsehq/us-federal-opportunities-api/examples/new-federal-opportunities-daily-alert).

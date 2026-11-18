---
layout: default
title: "US Federal Opportunities API: SAM.gov contract opportunities, Grants.gov grants and USAspending awards by keyword, NAICS, agency and set-aside. No API key."
description: "Find SAM.gov contract opportunities, Grants.gov grants and USAspending awards by keyword, NAICS and set-aside, with no API key. Guides for daily alerts and competitor research."
---

<div class="hero">
  <h1>US Federal Opportunities API</h1>
  <p class="lead">Find US government work before your competitors do: contract opportunities from SAM.gov, grants from Grants.gov and past awards from USAspending, filtered by keyword, NAICS code, agency, state and set-aside. No API key.</p>
  <a class="cta" href="https://apify.com/codepulsehq/us-federal-opportunities-api">Try it on Apify</a>
  <a class="cta secondary" href="https://github.com/CodePulseHQ/us-federal-opportunities-api">Examples on GitHub</a>
</div>

$0.003 per contract or grant opportunity and $0.002 per award. Errors are free. Made by [CodePulse](https://codepulsehq.com); these pages document our hosted Actor.

## Quick start

```bash
export APIFY_TOKEN=...   # free Apify account: Console > Settings > API & Integrations

curl -sS -X POST \
  "https://api.apify.com/v2/acts/codepulsehq~us-federal-opportunities-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"sources": ["contracts"], "keywords": ["cybersecurity"], "naics": ["5415"], "postedWithinDays": 14, "maxResults": 20}'
```

## Guides {#guides}

<div class="cards">
  <div class="card"><h3><a href="docs/sam-gov-opportunities-without-api-key.md">How to get SAM.gov contract opportunities without an API key</a></h3><p>SAM.gov publishes a public daily extract of every active contract opportunity. How to use it, what is in it, and how to search it by keyword, NAICS and set-aside.</p></div>
  <div class="card"><h3><a href="docs/daily-alerts-new-federal-contracts.md">How to get daily alerts for new federal contract opportunities</a></h3><p>Set up a daily alert for new federal contract opportunities in your NAICS code or keywords, delivered to email, Slack or a spreadsheet.</p></div>
  <div class="card"><h3><a href="docs/find-grants-gov-opportunities-api.md">How to search Grants.gov opportunities through an API</a></h3><p>Search open federal grants by keyword with award ceilings, deadlines and eligibility, using Grants.gov's public API or the Actor.</p></div>
  <div class="card"><h3><a href="docs/who-won-federal-contracts-usaspending.md">How to find who won federal contracts using USAspending data</a></h3><p>Find which companies won federal contracts matching your keywords, with amounts, agencies and dates, for competitor and incumbent research before you bid.</p></div>
  <div class="card"><h3><a href="docs/naics-codes-and-set-asides-explained.md">NAICS codes and federal set-aside codes explained</a></h3><p>What NAICS and PSC codes mean on federal contract notices, and what the set-aside codes SBA, 8A, HZC, SDVOSBC and WOSB stand for.</p></div>
</div>

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

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Do I need a SAM.gov API key?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "No. The Actor reads the public daily extract of active contract opportunities that SAM.gov publishes."
      }
    },
    {
      "@type": "Question",
      "name": "How fresh is the data?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Contract opportunities are as fresh as SAM.gov's overnight extract. Grants come live from Grants.gov. Awards trail real events because agencies report with a delay."
      }
    },
    {
      "@type": "Question",
      "name": "What does it cost?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "$0.003 per contract or grant opportunity, $0.002 per award. Errors are free and you can cap spend per run."
      }
    },
    {
      "@type": "Question",
      "name": "Is the data official?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Yes: SAM.gov, Grants.gov and USAspending.gov. This project is not affiliated with or endorsed by the US government."
      }
    }
  ]
}
</script>

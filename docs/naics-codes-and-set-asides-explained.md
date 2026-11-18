---
layout: default
title: "NAICS codes and federal set-aside codes explained"
description: "What NAICS and PSC codes mean on federal contract notices, and what the set-aside codes SBA, 8A, HZC, SDVOSBC and WOSB stand for."
---

# NAICS codes and federal set-aside codes explained

Two fields decide whether a federal contract opportunity is for you: the **NAICS code** (what kind of work) and the **set-aside** (who may bid).

## NAICS codes

NAICS (North American Industry Classification System) is a six-digit industry code. The first digits are the broad sector, the later ones narrow it down. When you filter by NAICS in the [Actor](https://apify.com/codepulsehq/us-federal-opportunities-api), a short code matches everything under it.

| Code | Meaning |
|---|---|
| 5415 | Computer systems design and related services (matches 541511, 541512, 541513, 541519) |
| 541330 | Engineering services |
| 541611 | Administrative management and general management consulting |
| 236 | Construction of buildings |
| 561 | Administrative and support services |
| 334 | Computer and electronic product manufacturing |

Notices also carry a **PSC** (Product Service Code), which classifies what is being bought (for example D302 for IT systems development services). NAICS describes the industry; PSC describes the item.

## Set-aside codes

A set-aside reserves the contract for a category of business.

| Code | Meaning |
|---|---|
| SBA | Total small business set-aside |
| SBP | Partial small business set-aside |
| 8A | 8(a) Business Development program |
| 8AN | 8(a) sole source |
| HZC | HUBZone set-aside |
| SDVOSBC | Service-disabled veteran-owned small business set-aside |
| SDVOSBS | Service-disabled veteran-owned, sole source |
| WOSB | Woman-owned small business |
| ISBEE | Indian small business economic enterprise |
| NONE | No set-aside (full and open competition) |

## Notice types

*Sources Sought* and *Special Notice* are market research: the agency is asking who could do the work, which is a chance to get on their radar. *Presolicitation* warns that a solicitation is coming. *Solicitation* and *Combined Synopsis/Solicitation* are open bids with a response deadline.

## Putting it together

```json
{ "sources": ["contracts"], "naics": ["5415"], "setAsides": ["SBA", "8A", "HZC"], "noticeTypes": ["Solicitation", "Sources Sought"], "postedWithinDays": 30 }
```

Ready-made page: [small business set-aside federal contracts by NAICS code](https://apify.com/codepulsehq/us-federal-opportunities-api/examples/small-business-set-aside-contracts).

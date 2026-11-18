#!/usr/bin/env bash
# Needs an Apify API token (free account): export APIFY_TOKEN=...
set -euo pipefail

curl -sS -X POST \
  "https://api.apify.com/v2/acts/codepulsehq~us-federal-opportunities-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"sources": ["contracts"], "keywords": ["cybersecurity"], "naics": ["5415"], "postedWithinDays": 14, "maxResults": 20}'

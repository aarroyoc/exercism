gh api /repos/aarroyoc/exercism/pulls > prs.json
cat prs.json | jq -r '.[] | select(.state == "open") | ("gh api -X PUT /repos/aarroyoc/exercism/pulls/" + (.number | tostring) + "/merge")' | sh

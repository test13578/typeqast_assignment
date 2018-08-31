#!/bin/bash

TOKEN="JWT_TOKEN_FROM_STEP2"
SUBSCRIPTION_ID="subscription_id"

curl -X PUT \
    -H "Authorization: Bearer ${TOKEN}" \
    -H "Content-Type: application/json" \
    "https://management.azure.com/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/SentiaResourceGroup/providers/Microsoft.Authorization/policyAssignments/6e3b45b46a1a4ec0836cf065?api-version=2018-05-01" \
    --data @../azure_policy/policy.json

#!/bin/bash

APP_ID="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
PASSWORD="principal_password"
TENANT_ID="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

curl -X POST -d "grant_type=client_credentials&client_id=${APP_ID}&client_secret=${PASSWORD}&resource=https%3A%2F%2Fmanagement.azure.com%2F" \
                "https://login.microsoftonline.com/${TENANT_ID}/oauth2/token"

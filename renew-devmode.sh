#!/bin/bash
# Renew webOS Developer Mode silently via LG REST API
# No app is opened on the TV — completely invisible

TOKEN="7dd5ee939af6d82f9399b124da03b58715a677e9d04ad36549ebae4ac49ed57b"
API="https://developer.lge.com/secure"

echo "[$(date)] Renewing Developer Mode..."
RESPONSE=$(curl -sk "$API/ResetDevModeSession.dev?sessionToken=$TOKEN" 2>&1)
echo "[$(date)] Response: $RESPONSE"

REMAINING=$(curl -sk "$API/CheckDevModeSession.dev?sessionToken=$TOKEN" 2>&1)
echo "[$(date)] Remaining: $REMAINING"

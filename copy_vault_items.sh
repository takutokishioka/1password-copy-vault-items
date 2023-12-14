#!/bin/bash

source config.txt

item_ids=$(op items list --vault="$SOURCE_VAULT" --format=json | jq -r '.[].id')

# echo "$item_ids"

for id in $item_ids; do
    item=$(op item get "$id" --format=json)
    if echo "$item" | jq -r '.title' | grep -ivq "$EXCLUDE_KEYWORD"; then
        echo "$item" | op item create --vault="$DESTINATION_VAULT"
        echo "Item $id copied to $DESTINATION_VAULT."
    fi
done

echo "Items have been copied from $SOURCE_VAULT to $DESTINATION_VAULT."
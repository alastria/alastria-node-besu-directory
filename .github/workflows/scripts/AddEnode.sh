#!/bin/bash

case $TYPE in
    "validator")
        echo "| $NAME | $HOSTING | $ADDRESS | $ENODE |" >> ./DIRECTORY_VALIDATOR.md
        echo "| $NAME | $ENODE |" >> ./DIRECTORY.md
        echo "$(echo "[$(cat ./data/validator-nodes.json), [\"$ENODE\"]]" | jq '[.[0][], .[1][]]' )" > ./data/validator-nodes.json
    ;;
    "regular")
        echo "| $NAME | $HOSTING | $ENODE |" >> ./DIRECTORY_REGULAR.md
        echo "| $NAME | $ENODE |" >> ./DIRECTORY.md
        echo "$(echo "[$(cat ./data/regular-nodes.json), [\"$ENODE\"]]" | jq '[.[0][], .[1][]]' )" > ./data/regular-nodes.json
    ;;
esac

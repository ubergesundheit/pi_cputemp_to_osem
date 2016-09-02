#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

SENSEBOX_ID=<your sensebox id>
SENSOR_ID=<your sensor id>

TEMP=$(/opt/vc/bin/vcgencmd measure_temp | cut -b 6-9)

URL="https://api.opensensemap.org/boxes/$SENSEBOX_ID/$SENSOR_ID"

curl -H "Content-type: application/json" -X POST -d "{\"value\":$TEMP}" --fail --silent --show-error --output /dev/null $URL

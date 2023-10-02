#!/bin/bash
export workspace= $1
terraform workspace list > ./list
ws=$(grep -il $workspace ./list)
if [ -z "$ws" ]; then
terraform workspace new $workspace
fi

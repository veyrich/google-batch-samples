#!/bin/sh

#a simple Google Batch submit script that generates a unique jobname

suffix=$(date +%s)
echo "suffix=$suffix"
gcloud batch jobs submit job-$suffix --location us-central1 --config gpu.json

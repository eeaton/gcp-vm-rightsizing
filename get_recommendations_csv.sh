#!/bin/bash

## The Recommendations API requires project and zones as inputs for the call, so must be run multiple times to get the scope of an organization
## run a loop that allows using all project names as a variable
for project in $(gcloud projects list | sed '1d' | cut -d " " -f1); do

## run a loop that identifies zones that are in use for each project
   for zone in $(gcloud compute instances list --project $project --format='(zone)' | tail -n +2 | sort | uniq); do
   
   ## call recommendations API via gcloud, configuring the format to CSV and using project and zone as arguments
     gcloud beta recommender recommendations list \
      --project $project \
      --location $zone \
      --recommender=google.compute.instance.MachineTypeRecommender \
      --format="csv[no-heading](description,primaryImpact.costProjection.cost.units,primaryImpact.costProjection.cost.currencyCode, content.operationGroups.operations.resource)"
   done
 done

## TODO: add a bit to export the csv to GCS, etc?

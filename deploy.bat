@echo off

SET version=v1
SET name=bwip-js
SET project=es-ds-sds-d
SET cluster=ha-cluster-1
SET zone=us-central1

docker tag %name%:latest gcr.io/%project%/%name%:%version%
gcloud config set project %project%
gcloud docker -- push gcr.io/%project%/%name%:%version%
REM gcloud container clusters get-credentials %cluster% --zone %zone% --project %project%
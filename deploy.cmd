SET version=v1
SET name=bwip-js
SET project=es-ds-d

docker tag %name%:latest gcr.io/%project%/%name%:%version%
gcloud config set project %project% && gcloud docker -- push gcr.io/%project%/%name%:%version%
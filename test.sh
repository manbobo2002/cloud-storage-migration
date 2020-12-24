export PROJECT_ID=$(gcloud config list --format 'value(core.project)' 2>/dev/null)


gsutil lifecycle set lifecycle-policy.json gs://${PROJECT_ID}-serving-bucket

#check configuration
gsutil lifecycle get gs://${PROJECT_ID}-serving-bucket
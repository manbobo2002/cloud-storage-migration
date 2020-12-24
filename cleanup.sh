gsutil rm -r gs://${PROJECT_ID}-serving-bucket
gsutil rm -r gs://$PROJECT_ID-idle-bucket
gcloud functions delete migrate_storage -q
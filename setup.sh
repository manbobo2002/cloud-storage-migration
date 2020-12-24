export PROJECT_ID=$(gcloud config list --format 'value(core.project)' 2>/dev/null)

#create bucket
gsutil mb -c standard -l us-central1 gs://${PROJECT_ID}-serving-bucket
#open to public
gsutil acl ch -u allUsers:R gs://${PROJECT_ID}-serving-bucket
#copy test.txt into bucket
gsutil cp test.txt  gs://${PROJECT_ID}-serving-bucket
#make file to public
gsutil acl ch -u allUsers:R gs://${PROJECT_ID}-serving-bucket/test.txt
#try to access the file
curl http://storage.googleapis.com/${PROJECT_ID}-serving-bucket/test.txt
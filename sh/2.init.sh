gcloud services enable healthcare.googleapis.com
gcloud services enable storage.googleapis.com
gcloud services enable cloudresourcemanager.googleapis.com

PROJECT_NUMBER=$(gcloud projects list --filter="$(gcloud config get-value project)" --format="value(PROJECT_NUMBER)")

echo "Setting permissions to import files from cloud storage..."
gcloud projects add-iam-policy-binding $PROJECT \
    --member=serviceAccount:service-$PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com \
    --role=roles/storage.objectViewer 

gcloud healthcare datasets create dicom-dataset1 \
  --location=us-central1

gcloud healthcare dicom-stores create dicom-store1 \
  --dataset=dicom-dataset1 \
  --location=us-central1

gcloud alpha storage buckets create gs://$BUCKET_NAME --location $LOCATION


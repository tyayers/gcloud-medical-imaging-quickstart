
gcloud alpha storage cp ../samples/DICOMM_1.DCM gs://$BUCKET_NAME/DICOMM_1.DCM
gcloud alpha storage cp ../samples/DICOMM_2.DCM gs://$BUCKET_NAME/DICOMM_2.DCM

gcloud healthcare dicom-stores import gcs dicom-store1 \
  --dataset=dicom-dataset1 \
  --location=us-central1 \
  --gcs-uri=gs://$BUCKET_NAME/DICOMM_1.DCM

  gcloud healthcare dicom-stores import gcs dicom-store1 \
  --dataset=dicom-dataset1 \
  --location=us-central1 \
  --gcs-uri=gs://$BUCKET_NAME/DICOMM_2.DCM
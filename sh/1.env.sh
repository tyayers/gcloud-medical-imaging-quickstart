# https://cloud.google.com/healthcare-api/docs/how-tos/dicom 
# DICOM Viewer: https://docs.ohif.org/connecting-to-image-archives/google-cloud-healthcare.html 

export TOPIC_SINGULAR="dicom"

BUCKET_NAME="${TOPIC_SINGULAR}_images_t$(tr -dc A-Za-z0-9 </dev/urandom | head -c 8 ; echo '')"
export BUCKET_NAME=$(echo "$BUCKET_NAME" | tr '[:upper:]' '[:lower:]')

echo $BUCKET_NAME
# export BUCKET_NAME="dicom_images_tmbjo2ddo"
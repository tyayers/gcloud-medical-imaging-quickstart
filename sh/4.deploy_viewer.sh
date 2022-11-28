# 1. First follow directions here (https://docs.ohif.org/connecting-to-image-archives/google-cloud-healthcare.html) 
# to create a Google OAuth client and copy the CLIENT ID
export CLIENT_ID="323709580283-nrc5u242ulg7r34b51v94rjf2nlaof2d.apps.googleusercontent.com"

# 2. Now pull and re-push the viewer container to Container Registry
docker pull ohif/viewer:latest
docker tag ohif/viewer gcr.io/$PROJECT/ohifviewer
docker push gcr.io/$PROJECT/ohifviewer

# 3. Now deploy the OHIF Viewer with the client ID
gcloud run deploy ohifviewer --image gcr.io/$PROJECT/ohifviewer:latest \
    --platform managed --project $PROJECT \
    --region $LOCATION --allow-unauthenticated \
    --set-env-vars CLIENT_ID="$CLIENT_ID" \
    --port=80

# 4. Now add the Cloud Run deployed URL to the allowed origins and redirect URIs of the Google OAuth client
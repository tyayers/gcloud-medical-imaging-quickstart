module "healthcare" {
  source  = "terraform-google-modules/healthcare/google"
  version = "~> 1.2"

  project  = "cloud32s"
  name     = "dicom-dataset1"
  location = "us-central1"
  dicom_stores = [{
    name = "dicom-store1"
    iam_members = [
      { role = "roles/healthcare.dicomEditor", member = "user:admin@tyayers.altostrat.com" }
    ]
  }]
}
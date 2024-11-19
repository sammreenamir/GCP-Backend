resource "google_cloudfunctions_function" "visitor_counter" {
  name        = "visitorCounterFunction2"
  runtime     = "python311"
  region      = "us-central1"
  project     = "cloud-resume-sammreen"
  entry_point = "visitor_counter"

  source_archive_bucket = "sammreenamir.online"
  source_archive_object = "cloud-resume-terraform.zip"

  environment_variables = {
    "GOOGLE_FUNCTION_SOURCE" = "main.py"
  }

  trigger_http = true
}


resource "google_cloudfunctions_function" "my_function" {
  name        = "cloud-resume-function"
  description = "My Cloud Resume Function"
  runtime     = "python311"  # Ensure it matches your Python environment
  source_archive_bucket = "sammreenamir.online"
  source_archive_object = "cloud-resume-terraform.zip"
  entry_point = "visitor_counter"  # This must match the function name in main.py
}

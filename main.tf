provider "google" {
  project = "cloud-resume-sammreen"
  region  = "us-central1"
}

resource "google_cloudfunctions_function" "visitor_counter" {
  name                  = "count-func02"             
  runtime               = "python311"                 
  entry_point           = "visitor_counter"           
  source_archive_bucket = "sammreenamir.online"
  source_archive_object = "cloud-resume-terraform.zip" 
  trigger_http          = true                        
}

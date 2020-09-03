

resource "google_notebooks_instance" "instance" {
  name = "notebooks-instance-terraform"
  location = "us-west1-a"
  machine_type = "n1-standard-1"
  vm_image {
    project      = "${var.project}"
    image_family = "tf-latest-cpu"
  }
}
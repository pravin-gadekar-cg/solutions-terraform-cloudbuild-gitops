
resource "random_id" "instance_id" {
 byte_length = 8
}

resource "google_notebooks_instance" "instance" {
  provider = google-beta
  name = "cg-${random_id.instance_id.hex}"
  location = "us-west1-a"
  machine_type = "n1-standard-1"
  install_gpu_driver = true
  accelerator_config {
  type = "NVIDIA_TESLA_T4"
  core_count = 1
  }
  vm_image {
  project      = "deeplearning-platform-release"
  image_family = "tf-latest-gpu"
  }
}
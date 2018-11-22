# Download the ghost:latest docker_image "image_id" to the system using a Terraform resource
resource "docker_image" "image_id" {
  name = "ghost:latest"
}
resource "docker_image" "image_id2" {
  name = "nginx:latest"
}
# Start a container
resource "docker_container" "ghost" {
  name  = "container1"
  image = "${docker_image.image_id.latest}"
}
# Start a container
resource "docker_container" "nginx" {
  name  = "container2"
  image = "${docker_image.image_id2.latest}"
}


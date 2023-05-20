resource "docker_image" "nginx-akp" {
  name="nginx"
}

resource "docker_container" "nginx-akp" {
  image=docker_image.nginx-akp.image_id
  name="tutorial"

  ports {
    internal=80
    external=8000
  }
}
resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx"

  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        "app" = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          "app" = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx:alpine"
        }
      }
    }
  }

}

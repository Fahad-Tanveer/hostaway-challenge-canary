resource "helm_release" "nginx_ingress" {
  name             = "ingress-nginx"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  version          = "4.11.2"
  namespace        = "ingress-nginx"
  create_namespace = true

  values = [
    <<EOF
controller:
  metrics:
    enabled: true
  service:
    type: ClusterIP
EOF
  ]
}



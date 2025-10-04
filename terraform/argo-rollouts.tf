resource "helm_release" "argo_rollouts" {
  name             = "argo-rollouts"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-rollouts"
  version          = "2.38.0"
  namespace        = "argo-rollouts"
  create_namespace = true

  values = [
    <<EOF
dashboard:
  enabled: true

installCRDs: true
EOF
  ]
}



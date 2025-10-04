# Prometheus for monitoring and analysis
# resource "helm_release" "prometheus" {
#   name             = "prometheus"
#   repository       = "https://prometheus-community.github.io/helm-charts"
#   chart            = "prometheus"
#   version          = "25.27.0"
#   namespace        = kubernetes_namespace.monitoring.metadata[0].name
#   create_namespace = false  # Already created above
#
#   values = [
#     <<EOF
# server:
#   persistentVolume:
#     enabled: false
#
# alertmanager:
#   enabled: false
#
# pushgateway:
#   enabled: false
#
# kubeStateMetrics:
#   enabled: false
#
# prometheusNodeExporter:
#   enabled: false
#
# prometheusOperator:
#   enabled: false
#
# # Basic scrape config for NGINX metrics
# prometheus:
#   prometheusSpec:
#     additionalScrapeConfigs:
#       - job_name: 'nginx-metrics'
#         static_configs:
#           - targets: ['hello.external-staging-hello.svc.cluster.local:4040']
#         scrape_interval: 30s
#         metrics_path: /metrics
# EOF
#   ]
# }

output "cert_namespace" {
  value       = "cert-manager"
  description = "Namespace cert-manager is located in cluster"
  depends_on  = [
    null_resource.deploy_cert-manager
  ]
}
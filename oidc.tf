 data "tls_certificate" "certificate" {
  count = var.enable_oidc ? 1 : 0 
  url = aws_eks_cluster.eks.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "openid" {
  count = var.enable_oidc ? 1 : 0

  url = aws_eks_cluster.eks.identity[0].oidc[0].issuer
  client_id_list = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.certificate[0].certificates[0].sha1_fingerprint]
}


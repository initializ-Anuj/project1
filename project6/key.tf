resource "tls_private_key" "linux_test_ssh" {

  algorithm = "RSA"

  rsa_bits  = 4096

}

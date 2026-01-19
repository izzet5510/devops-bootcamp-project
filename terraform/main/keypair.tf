resource "aws_key_pair" "devops_key" {
  key_name   = "devops-lab-key"
  public_key = file(pathexpand(var.ssh_public_key_path))
}

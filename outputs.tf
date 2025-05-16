output "ami_id" {
  description = "AMI ID used for EC2 instance"
  value       = data.aws_ami.amazon-linux-image.id
}

output "server_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.myapp-server.public_ip
}
# Output public IP address
output "aws_instance_public_ip" {
  value = [ 
  "EC2_HOST_01: ${aws_instance.dev-lab-01.public_ip}",
  ]
}
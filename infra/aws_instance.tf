resource "aws_instance" "dev-lab-01" {

  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.deployer.key_name
  subnet_id = aws_subnet.subnet_01.id
  vpc_security_group_ids = [ 
      aws_security_group.ssh_any.id,
      aws_security_group.http_any.id,
      aws_security_group.egress_any.id,
      ]

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo su -
              sudo apt-get update
              sudo apt install net-tools
              sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
              sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
              sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
              sudo apt-get update ; clear
              sudo apt-get install -y docker-ce
              sudo service docker start ; clear
            EOF

  tags = {
      Name = "dev-lab-01"
  }
}
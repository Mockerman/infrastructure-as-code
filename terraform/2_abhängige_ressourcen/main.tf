provider "aws" {
  region = "eu-central-1"
}

# Security Group erstellen, die SSH über IPv4 (überall) erlaubt
resource "aws_security_group" "allow_ssh" {
  # keine verpflichtende Argumente bei Security-Groups
}

resource "aws_security_group_rule" "ingress_ssh" {
  from_port = 22
  to_port = 22
  security_group_id = aws_security_group.allow_ssh.id
  protocol = "tcp"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_instance" "beispiel" {
  ami           = "ami-01e444924a2233b07"
  instance_type = "t2.nano"

  # Instanz einen Name-Tag für AWS-Management-Konsole geben
  tags = {
    Name = "Hallo-Welt"
  }

  # Instanz mit Security-Group verknüpfen
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
}

# Instanz-IP ausgeben
output "beispiel_ip" {
  value = aws_instance.beispiel.public_ip
}
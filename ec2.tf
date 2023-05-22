resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  key_name      = "mentorei-aws"

  tags = {
    Name = "${var.instance_name}-${count.index}"
  }

  vpc_security_group_ids = [aws_security_group.allow_tls.id, aws_security_group.ssh-access.id]
  depends_on             = [aws_s3_bucket.dev, aws_db_instance.dev]
}
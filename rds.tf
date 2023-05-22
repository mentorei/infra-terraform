resource "aws_db_instance" "dev" {
  allocated_storage     = 10
  max_allocated_storage = 20
  db_name               = "mentorei_dev"
  engine                = "postgres"
  engine_version        = "15.2"
  instance_class        = "db.t3.micro"
  username              = "mentorei"
  password              = "Mentorei_2023"
  skip_final_snapshot   = true
  multi_az              = false
  port                  = 5455
}
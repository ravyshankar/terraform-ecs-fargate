module "rds" {
  source = "../vpc"
    
}

resource "aws_db_instance" "strapi-db" { #\\change the name of the strapi-db to your desired name
  allocated_storage = 20 #\\the number is in GB, please change it to your desired value depending on your DB storage needs. 
  engine = "mysql"
  instance_class = db.t3.micro #\\change the instance type according to your needs
  backup_retention_period = 30
  
}

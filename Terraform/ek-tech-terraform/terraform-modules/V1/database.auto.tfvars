engine                  = "postgres"
engine_version          = "14.1"
instance_class          = "db.t3.micro"
allocated_storage       = 10
max_allocated_storage   = 50
name                    = "postgres"
username                = "edu"
password                = "password"
storage_encrypted       = true
storage_type            = "gp2"
port                    = 5432
multi_az                = false
maintenance_window      = "Mon:00:00-Mon:03:00"
backup_window           = "03:00-06:00"
backup_retention_period = 10
apply_immediately       = "true"
skip_final_snapshot     = true
deletion_protection     = false
publicly_accessible     = false

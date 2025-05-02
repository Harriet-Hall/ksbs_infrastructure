resource "aws_secretsmanager_secret" "db_credentials" {
  name = "peewee-api-secret"
}

resource "aws_secretsmanager_secret_version" "db_credentials_version" {
  secret_id     = aws_secretsmanager_secret.db_credentials.id
  secret_string = <<EOF
{"USERNAME": "${var.db_username}",
"PASSWORD": "${var.db_password}",
"HOST": "${var.db_host}",
"PORT": "${var.db_port}",
"DATABASE": "${var.db_database}",
}
EOF
}
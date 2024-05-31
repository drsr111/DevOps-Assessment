resource "aws_secretsmanager_secret" "notification_db_password" {
  name = "notification-db-password"
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.notification_db_password.id
  secret_string = jsonencode({
    password = "YOUR_DB_PASSWORD"
  })
}

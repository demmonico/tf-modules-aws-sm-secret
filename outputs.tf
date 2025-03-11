output "secret" {
  description = "The AWS SM secret object"
  value       = aws_secretsmanager_secret.this
}

output "role_name" {
  value       = aws_iam_role.role.name
  description = "The name of IAM role for the instance profile."
}

output "instance_profile_name" {
  value       = aws_iam_instance_profile.instance_profile.name
  description = "The name of the instance profile."
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.my_ec2.id
}

output "instance_arn" {
  description = "EC2 Instance ARN"
  value       = aws_instance.my_ec2.arn
}

output "instance_state" {
  description = "Current state of the EC2 instance"
  value       = aws_instance.my_ec2.instance_state
}

output "availability_zone" {
  description = "Availability Zone"
  value       = aws_instance.my_ec2.availability_zone
}

output "private_ip" {
  description = "Private IP Address"
  value       = aws_instance.my_ec2.private_ip
}
output "public_ip_address" {
    value = aws_lightsail_instance.example.public_ip_address
  
}

output "private_ip_address" {
    value = aws_lightsail_instance.example.private_ip_address
  
}
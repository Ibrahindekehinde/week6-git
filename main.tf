resource "aws_lightsail_instance" "example" {
  name              = "dev_server"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "nano_3_0"
  user_data         = <<-EOF
                      #!/bin/bash
                      sudo apt-get update
                      sudo apt-get install -y apache2
                      sudo systemctl start apache2
                      sudo systemctl enable apache2
                      echo '<h1> this is a deployed by maka <h1>' | sudo tee /var/www/html/index.html
                      EOF
  key_pair_name     = "some_key_name"
  tags = {
    foo = "bar"
  }
}
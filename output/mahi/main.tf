resource "aws_instance" "web" {

  count = 4

  ami           = "123"
  instance_type = "123"

  tags = {
    Name = "123-${count.index + 1}"
  }
}

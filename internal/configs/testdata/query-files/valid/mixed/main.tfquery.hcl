list "aws_instance" "test" {
  provider = aws
  count = 1
  config {
    tags = {
      Name = "test"
    }
  }
}
list "aws_instance" "test2" {
  provider = aws
  count = 1
  config {
    tags = {
      Name = join("-", ["test2", list.aws_instance.test.data[0]])
    }
  }
}
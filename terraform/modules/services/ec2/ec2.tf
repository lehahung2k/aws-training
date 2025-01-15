resource "aws_instance" "main_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.ec2_subnet.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  iam_instance_profile   = var.iam_instance_profile

  associate_public_ip_address = var.associate_public_ip_address

  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    encrypted   = true

    delete_on_termination = false

    tags_all = {
      Name = "${var.project_name}-${var.environment}-ec2-root-volume"
    }
  }

  tags = {
    Name = "${var.project_name}-${var.environment}-ec2-instance"
  }
}

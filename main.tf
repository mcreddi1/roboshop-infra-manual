resource "aws_instance" "chinna" {
    for_each = var.instances
  ami = data.aws_ami.chinna_ami.id
  instance_type = each.value
  vpc_security_group_ids = [var.allow_all]
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.chinna
  zone_id = var.zone_id
  type = "A"
  name = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  ttl = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}
resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

user_data = <<-EOF
#!/bin/bash
yum update -y
yum install -y nginx

cat <<HTML > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ganesh | Terraform AWS Project</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,Helvetica,sans-serif;
}

body{
    background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:700px;
    background:white;
    border-radius:20px;
    padding:40px;
    text-align:center;
    box-shadow:0 20px 50px rgba(0,0,0,.3);
}

.logo{
    font-size:70px;
}

h1{
    color:#2563eb;
    margin-top:10px;
}

h2{
    color:#333;
    margin:15px 0;
}

p{
    color:#555;
    font-size:18px;
}

.tech{
    margin-top:30px;
}

.tech span{
    display:inline-block;
    margin:8px;
    padding:10px 18px;
    background:#2563eb;
    color:white;
    border-radius:30px;
    font-size:15px;
}

.footer{
    margin-top:35px;
    color:#777;
    font-size:15px;
}
</style>

</head>

<body>

<div class="container">

<div class="logo">🚀</div>

<h1>Terraform AWS Infrastructure</h1>

<h2>Welcome Ganesh 👋</h2>

<p>
This EC2 instance was automatically provisioned using Terraform.
</p>

<div class="tech">
<span>AWS EC2</span>ye
<span>Terraform</span>
<span>VPC</span>
<span>Subnet</span>
<span>Security Group</span>
<span>Nginx</span>
</div>

<div class="footer">
✅ Successfully deployed using Infrastructure as Code (IaC)
</div>

</div>

</body>
</html>
HTML

systemctl enable nginx
systemctl restart nginx
EOF
  tags = {
    Name = "Terraform-EC2"
  }
}
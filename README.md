# Cloud-Architecture

-In this project, I am building and deploying a basic cloud architecture using AWS services and Terraform

The services i am using are:
  Internet Gateway, 
  Vpc,
  Subnets(Public and Private),
  Route tables,
  Security Groups,

This is our project folder layout:

![project layout](https://github.com/user-attachments/assets/bc342fb6-a3ab-4ab3-8ed1-1b3e2ca13706)

I've coded the services into their respective folders because in my opinion, everything is well organised

In VSCode(Visual Studio Code) open a provider.tf file and place your provider into the file
![provider file](https://github.com/user-attachments/assets/713d677b-0dae-4174-bb91-010fca03fff8)

Next, open a Vpc.tf folder and within that folder write your vpc resource 

![vpc](https://github.com/user-attachments/assets/8c749a43-c00f-4992-abf5-72455245d43b)

![cidr_block](https://github.com/user-attachments/assets/c5ef832c-3739-48b6-8817-9e0f52b73187)

The reason i use variables is because hard code does not scale and when things happen and  things need to change quickly you can do it one folder instead of ten for example

VPC stands for Virtual Private Cloud and it will create our own Virtual Private Cloud and all our resources will be deployed within this Virtual Private Cloud

Within the same VPC folder, write your Internet Gateway resource 

![Internet Gateway](https://github.com/user-attachments/assets/038272a9-a67e-4e94-b0ee-021ef6827e1f)

The Internet Gateway resource will allows our private cloud network to talk to the internet and recieve replies

Within the same VPC folder, write 2 subnet resources and name them public subnet 1 and public subnet 2

![Public Subnet 1 cidr_block](https://github.com/user-attachments/assets/73c7e120-54c5-4db4-82a0-99400752ea06)

![Public Subnet 1 AZ](https://github.com/user-attachments/assets/daed1238-d181-4bbd-bd07-3829ffabc901)

![Public Subnet 2 cidr_block](https://github.com/user-attachments/assets/9fd188e6-1347-4e84-809d-d0bc669effb2)

![Public Subnet 2 AZ](https://github.com/user-attachments/assets/ce5a9350-272f-44db-b053-2d459a14d0c3)

![Public Subnets](https://github.com/user-attachments/assets/0c42f557-7a97-42f2-aaa1-15d3cdd34235)

Subnets are used to divide our network into smaller segments, we would not want our network to clash with each other

Within the same VPC folder, write 4 subnet resources and name them private subnet 1 and etc...

![Private Subnets 1 2](https://github.com/user-attachments/assets/bac3d0db-d951-40c6-98c9-378b5b034e88)

![Private Subnet 1 cidr_block](https://github.com/user-attachments/assets/cc29d33f-fe4e-4e3f-9028-5ffec053fe4f)

![Private Subnet 1 AZ](https://github.com/user-attachments/assets/be5eff95-1262-4987-98cd-c6cc441debb2)

![Private Subnet 2 cidr_block](https://github.com/user-attachments/assets/437d2968-5c1e-4170-ae56-54f65f94dde7)

![Private Subnet 2 AZ](https://github.com/user-attachments/assets/ed390a1a-9247-45bf-be00-7435e87a2b77)


![Private Subnets 3 4](https://github.com/user-attachments/assets/ccd636f5-6c0e-40ed-a02f-f2f48c0c8c62)

![Private Subnet 3 cidr_block](https://github.com/user-attachments/assets/d9fef9ad-5fd0-433c-b99b-3ee0fe56c14e)

![Private Subnet 3 AZ](https://github.com/user-attachments/assets/89cc6deb-3be6-4e50-927d-debd060fa594)

![Private Subnet 4 cidr_block](https://github.com/user-attachments/assets/4af453e8-1f72-4896-8c26-6d0a764a430b)

![Private Subnet 4 AZ](https://github.com/user-attachments/assets/ee633494-67d1-4d39-beac-554f4153a39a)


# Security group file:

Next, I want you to open security-groups.tf file.Here we will write and configure our security group resource 

Security groups allow us to configure which network traffic we want allowed into our architecture but we can not control the network traffic going out

Here is our public security group that will allow HTTPS traffic: 

![Public Security Group](https://github.com/user-attachments/assets/9eabeb78-3164-46fb-97e5-9f967df975d5)

![public_security_group_ingress_from_port](https://github.com/user-attachments/assets/0693a54e-6c9f-423e-be4c-5747f1868201)

![public_security_group_ingress_to_port](https://github.com/user-attachments/assets/06aea6f7-6fc3-4b35-9ecf-aae5db1c20aa)

![Pblic Security group from and to port](https://github.com/user-attachments/assets/03a28e4f-9058-4de8-8013-d5d54881ae2a)

With the same file, Configure another security group but this security group will be a private security group(refer to architeture diagram)

![Private Security Group 1](https://github.com/user-attachments/assets/4afa0307-6c52-440e-93fc-614ef2221085)

![Private Security Group ingress from and to port ](https://github.com/user-attachments/assets/aa75c8c7-fc03-4845-82c1-03d4f842456a)

![Private security group egress from and to port](https://github.com/user-attachments/assets/83bb7fea-3155-4542-b983-b9f821d024c7)

Within the same file, Configure another security group resource and this one will be called private rds security group but you can name it anything:

![private rds security group](https://github.com/user-attachments/assets/0ed0b44e-3104-46f8-966b-ca192cdf2ab4)

![private rds security group ingress from and to port](https://github.com/user-attachments/assets/81abe317-b19f-497c-bf33-f86fa6a750c3)

![private rds  security group egress from and to port](https://github.com/user-attachments/assets/b66f6203-4d05-48c2-8da9-f4cd1e0c0768)

# Route Table File:

Create a new file called route-tables.tf.Here we will create our route table resources and our route table association resources

A route table simply determines where network traffic is directed within a VPC and a route table association links a subnet to a specific route table

In the route-table.tf file, configure your route table and name it "public route table"(refer to diagram)

![public route table](https://github.com/user-attachments/assets/aee6b5ed-7c05-4ea4-8086-45d395b7a4a3)

![public route table cidr block](https://github.com/user-attachments/assets/354276f2-c9cd-40a5-87f8-59c171661953)

Within the same file, associate the public route table with public subnet 1 and public subnet 2

![route table association](https://github.com/user-attachments/assets/871d7c04-ba77-443c-af37-24b7923b4dcb)

Within the same file, configure another route table and name it "private route table"

![Private route table ](https://github.com/user-attachments/assets/4230d981-9621-404c-9f27-d3cff424e7d2)

![private route table cidr block](https://github.com/user-attachments/assets/c05906a4-3d3f-47c1-be4e-cf434ec3f50b)

Within the same  file, associate the private route table with private subnet 1, private subnet 2, private subnet 3 and private subnet 4

![private route table association](https://github.com/user-attachments/assets/f89d09df-4e7a-44b1-a1a4-594170c9e10f)


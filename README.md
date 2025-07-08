# Cloud-Architecture

-In this project, I am buidling and deploying a basic cloud architecture using AWS services and Terraform

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



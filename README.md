03 - Tier System Architecture.

1] Requirements:

> Web Server with Nginx (Front-End)
> Application Server with a Java Service on Tomcat (Back-End)
> Database Server with Postgres (DB)

2] To Do:
> Architecture Diagram and Terraform Code.

3] Formulation of Resources:

> VPC (Customised):
      > 01 Subnet (Public) - Web Server
      > 02 Subnets (Private) - Application & DB Server

> 03 EC2 Instances (Web, App and DB):
      > Security Groups
      > Elastic IP
      > NAT Gateway (For Private Subnets) & Internet Gateway (For Public Subnet)
      > Route Table Configuration
      > Application Load Balancer

> Installation within Servers:
      > Nginx (Installed On Web Server)
      > Java and Tomcat (Installed On App Server)
      > PostgreSQL (Installed On DB Server)

4] Summary:

> Creation of VPC with 03 Subnets: 01-Public Subnet which will be Exposed to the Internet and 02-Private Subnets for Internal Compute.

> Public Subnet has been Connected with Internet Gateway for Internet Connectivity whereas Private Subnets has been Configured with NAT Gateway for Internet Connectivity.

> The Public Subnet consists of one Instance as “Web Server” with Nginx Installed During Launch Itself.

> The Private Subnets have been assigned to 02 Instances namely, Application Server and DB Server consisting of Java and PostgreSQL respectively.

> Only Web Server is Exposed to the Internet, and the Private Servers have been configured in such a way that it can be accessed through Web-Server only using “ssh”.

> Moreover, a Jump Host (Jump Server) can be configured for Enhanced Connectivity and Diminishing unwanted Load on Web Server for Connections to Application and DB Server.

For More Detailed Overview, Please Check the Diagrammatic Representation.


![image](https://user-images.githubusercontent.com/51474678/211202964-dec43ad7-b14d-47f0-b961-0e176772a82a.png)

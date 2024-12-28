03 - Tier System Architecture.

1] REQs:

> WEB Server with Nginx [Front-End]

> Application Server with a Java Service On Tom-Cat [Back-End]

> Database Server with Postgres [DB]

2] To Do:
> Architecture Diagram & Terraform Code.

3] Formulation of Resources:

> VPC [Customised]:
      > 01 Subnet [Public] - WEB Server
      > 02 Subnet [Private] - APP & DB Server

> 03 EC2 Instances [WEB, APP & DB]:
      > Security GROUP [SGs]
      > Elastic-IP
      > NAT Gateway [For Private Subnet] & Internet Gateway [For Public Subnet]
      > Route Table Configuration
      > Application Load Balancer

> Installation Within Servers:
      > Nginx [Installed On WEB Server]
      > Java & Tom-Cat [Installed On APP Server]
      > PostgreSQL [Installed On DB Server]

4] Synopsis:

> Creation of VPC with 03 Subnets: 01-Public Subnet Which Will Be Exposed to the Internet & 02-Private Subnet For Internal Compute.

> Public Subnet Has Been Connected with Internet Gateway For Internet Connectivity & Private Subnet Has Been Configured with NAT Gateway For Internet Connectivity.

> The Public Subnet Consist of One Instance as “WEB Server” with Nginx Installed During Launch Itself.

> The Private Subnet Have Been Assigned to 02 Instances Namely, APP Server & DB Server consisting of Java & PostgreSQL Respectively.

> Only WEB Server Is Exposed to the Internet, & the Private Server Have Been Configured In Such a Way that It Can Be Accessed through WEB-Server Only Using “ssh”.

> Moreover, a Jump Host [Jump Server] Can Be Configured For Enhanced Connectivity & Diminishing Extra Load on WEB Server For Connections to Application & DB Server.

For More Detailed Overview, Please Check the Diagrammatic Representation.


![image](https://user-images.githubusercontent.com/51474678/211479958-f155337b-5ccb-453e-8344-b44935b8fb82.png)

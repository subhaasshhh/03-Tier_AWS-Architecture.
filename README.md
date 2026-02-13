03 - Tier System Architecture.

1] REQ(s):

> WEB Server With Nginx [Front-End]

> Application Server With a Java Service On Tom-Cat [Back-End]

> Database Server With Postgres [DB]

2] To Do:
> Architecture Diagram & Terraform Code

3] Formulation of Resources:

> VPC [Customised]:
      > 01 Subnet [Public] - WEB Server
      > 02 Subnet [Private] - APP & DB Server

> 03 EC2 Instances [WEB, APP & DB]:
      > Security GROUP [SG]
      > Elastic-IP
      > NAT [Using for Private Subnet] & Internet [Using for Public Subnet]
      > Route Table Configuration
      > Application Load Balancer

> Installation Within Server(s):
      > Nginx [Installed On WEB Server]
      > Java & Tom-Cat [Installed On APP Server]
      > PostgreSQL [Installed On DB Server]

4] Synopsis:

> Creation of VPC With 03 Subnet(s): 01-Public Subnet Which Will Be Exposed to Internet & 02-Private Subnet for Internal Compute.

> Public Subnet Has Been Connected With Internet GW for Internet Connectivity & Private Subnet Has Been Configured With NAT GW for Internet Connectivity.

> The Public Subnet Consist of One Instance as “WEB Server” With Nginx Installed During Launch Itself.

> The Private Subnet Have Been Assigned to 02 Instances Namely, APP Server & DB Server Consisting of Java & PostgreSQL Respectively.

> Only WEB Server Is Exposed to Internet, & the Private Server Have Been Configured In Such a Way That It Can Be Accessed Through WEB-Server Only Using “ssh”.

> Also, a Jump Host [Jump Server] Can Be Configured for Enhanced Connectivity & Diminishing Extra Load On WEB Server for Connections to Application & DB Server.

For More Detailed Overview, Please Check the Diagrammatic Representation.


![image](https://user-images.githubusercontent.com/51474678/211479958-f155337b-5ccb-453e-8344-b44935b8fb82.png)

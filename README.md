03 - Tier System Architecture.

1] REQ(s):

> WEB Server With Nginx [Front-End].

> APP Server With a Java Service On Tom-Cat [Back-End].

> DB Server With Postgres [DB].

2] To Do:
> Architecture Diagram & Terraform Code.

3] Formulation of Resource(s):

> VPC [Customised]:
      > 01 SUBNET [Public] - WEB Server.
      > 02 SUBNET [Private] - APP & DB Server.

> 03 EC2 Instance(s) [WEB, APP & DB]:
      > Security GROUP [SG].
      > Elastic-IP.
      > NAT [Using for Private SUB] & Internet [Using for Public SUB].
      > Route Table Configuration.
      > Application Load Balancer [ALB].

> Installation Within Server(s):
      > Nginx [Installed On WEB Server].
      > Java & Tom-Cat [Installed On APP Server].
      > PostgreSQL [Installed On DB Server].

4] Synopsis:

> Creation of VPC With 03 SUB(s): 01-Public SUB Which Will Be Exposed to Internet & 02-Private SUB for Internal Compute.

> Public SUB Has Been Connected Through Internet GW for Internet Connectivity & Private SUB Has Been Configured Through NAT GW for Internet Connectivity.

> The Public SUB Consist of One Instance as “WEB Server” With Nginx Installed During Launch.

> The Private SUB Has Been Assigned to 02 Instance(s) Namely, APP Server & DB Server Consisting of Java & PostgreSQL Respectively.

> Only WEB Server Is Exposed to Internet, & the Private Server Have Been Configured In Such a Way That It Can Be Accessed Through WEB-Server Only - Using “ssh”.

> Also, a JUMP Host [JUMP Server] Can Be Configured for Enhanced Connectivity & Diminishing Extra Load On WEB Server for Connection(s) to Application & DB Server.

For More Detail(s), Please Check the Diagrammatic Representation.


![image](https://user-images.githubusercontent.com/51474678/211479958-f155337b-5ccb-453e-8344-b44935b8fb82.png)

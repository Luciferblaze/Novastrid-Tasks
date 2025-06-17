#Terraform 

the main.tf and variable.tf contains iac for creating a ec2 server in AWS.

#initializing the environment
terraform init

#validating the code files and syntax
terraform validate

#plan for resource
terrform plan

#create resource 
terraform apply

#remove resoure
terraform destroy

#promethous
the promethous.yaml scrapes metrices like cpu utlisation, memory utilization for every 15 seconds.

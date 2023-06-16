#dev

module "dev-app" {
    source = "./my_app_infra"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-053b0d53c279acc90"
}

#prod
 
 module "prod-app" {
    source = "./my_app_infra"
    my_env = "prod"
    instance_type = "t2.micro"
   ami = "ami-053b0d53c279acc90"
 }

 #test

 module "test-app" {
    source = "./my_app_infra"
    my_env = "test"
    instance_type = "t2.micro"
   ami = "ami-053b0d53c279acc90"
 }
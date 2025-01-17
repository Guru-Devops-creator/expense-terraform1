module "mysql_sg" {
    #source = "../terraform-aws-security-group"
    source = "git::git@github.com:Guru-Devops-creator/terraform-aws-security-groups.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    vpc_id = module.vpc.vpc_id
    common_tags = var.common_tags
    sg_tags = var.mysql_sg_tags


}
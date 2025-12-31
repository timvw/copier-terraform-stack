module "tags" {
    source = "../../modules/tags"
    environment = var.environment
    stack = basename(abspath(path.module))
}

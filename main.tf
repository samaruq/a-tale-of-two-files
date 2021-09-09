# define a module block type
module "create_two_files" {
  # tell terraform where to find the module definition
  # this is just a single directory
  source = "./modules/two-files"

  # the module expects a type string
  # so let's give it one
  file1_content = "This is the content of file1."

  # terraform also supports heredoc strings
  file2_content = <<EOF
  This is the content of file2.
  This is the second line of the content of file2.
  EOF
}

# Tfvars demo
# module "create_two_files" {
#   source = "./modules/two-files"
# 
#   # use root module input variables
#   # these are supplied by .tfvars file
#   file1_content = var.file1_content
#   file2_content = var.file2_content
# }

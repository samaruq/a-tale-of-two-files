# a separate file for two local variables is overkill
# but when you have a lot of them scattered throughout
# it might be better to group them in a separate locals.tf
locals {
  # path.root is a variable that is always available
  # this variable points to the absolute path
  # of the root module. Apart from path.root you have others, see 
  # https://www.terraform.io/docs/language/expressions/references.html#filesystem-and-workspace-info
  file1_path = "${path.root}/file1"
  file2_path = "${path.root}/file2"
}

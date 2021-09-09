# define output using an output of submodule
output "file1_content_base64" {
  value = module.create_two_files.file1_content_base64
}

# define output using an output of submodule
output "file2_content_base64" {
  value = module.create_two_files.file2_content_base64
}

# define an output for our submodule with 
# content of file1 base64 encoded.
output "file1_content_base64" {
  value = data.local_file.file1_content.content_base64
}

# define an output for our submodule with 
# content of file2 base64 encoded.
output "file2_content_base64" {
  value = data.local_file.file2_content.content_base64
}

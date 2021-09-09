# create resource for local file1
resource "local_file" "file1" {
  content  = var.file1_content
  filename = local.file1_path
}

# create resource for local file2
resource "local_file" "file2" {
  content  = var.file2_content
  filename = local.file2_path
}

# create data source with file1's content
data "local_file" "file1_content" {
  # we can not read the file before it has been
  # created. Terraform can in this case not know
  # this dependency. So we have to help it by
  # specifying this explicitly.
  depends_on = [
    local_file.file1
  ]
  filename = local.file1_path
}

# create data source with file2's content
data "local_file" "file2_content" {
  depends_on = [
    local_file.file2
  ]
  filename = local.file2_path
}

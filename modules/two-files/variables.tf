# define an input variable for our submodule
# this variable will hold the content of file1
variable "file1_content" {
  # you have to specify a type, see https://www.terraform.io/docs/language/expressions/types.html
  type = string
  # you can also provider a description for your variable, this optional but encouraged.
  description = "This is the content of file1."
}

# this variable will hold the content of file2
variable "file2_content" {
  type = string
  # here we define a default value for this variable, so if
  # no value is given, this default will be used.
  default     = "This is the default content for file2."
  description = "The contents of file2. File2 does not like 'windows', so any mention of it will be denied."

  # you can define multiple validation conditions
  # for a variable, to check if the user input is correct
  validation {
    # if condition = true --> good variable
    # if condition = false --> bad variable, throw error with custom error message
    condition     = replace(var.file2_content, "windows", "") == var.file2_content
    error_message = "Windows detected. Linux ftw! (macOS is fine too... I guess)."
  }
}

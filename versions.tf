# Every root module/submodule should have a versions.tf
# This is where you define the Terraform version to be used
# as well as the provider versions to use.
#
# Submodules usually set a lower bound for the 
# provider versions, i.e. >= 1.0.0. while root modules
# set an equality constraint, i.e. = 1.0.0 in order to avoid
# their pipeline suddenly breaking when an update comes out.

terraform {
  # set required terraform version
  required_version = ">= 1.0.0"

  # list your required providers here
  required_providers {
    local = {
      # specify where to get the provider
      source = "hashicorp/local"
      # this is root module so equality constraint
      version = "= 2.1.0"
    }
  }
}

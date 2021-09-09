# Providers should only be instantiated in a root
# end user module, not in a submodule.
# You can read more about it here:
# https://www.terraform.io/docs/language/modules/develop/providers.html
#
# Usually they are configured in a providers.tf file

provider "local" {
  # this simple provider does not need any configuration
}

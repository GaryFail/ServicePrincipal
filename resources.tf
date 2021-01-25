resource "azuread_application" "default" {
  display_name               = "DemoAppRegistration"
  available_to_other_tenants = false
  oauth2_allow_implicit_flow = false
}

resource "random_password" "default" {
  length  = 33
  special = true
}

resource "azuread_application_password" "default" {
  application_object_id = azuread_application.default.id
  description           = "Managed Password"
  value                 = random_password.default.result
  end_date_relative     = "24h"
}


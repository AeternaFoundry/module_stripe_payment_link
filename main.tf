resource "stripe_payment_link" "payment_links" {
  for_each = var.payment_links

  line_items                  = each.value.line_items
  active                      = each.value.active
  after_completion            = each.value.after_completion
  allow_promotion_codes       = each.value.allow_promotion_codes
  application_fee_amount      = each.value.application_fee_amount
  application_fee_percent     = each.value.application_fee_percent
  automatic_tax               = each.value.automatic_tax
  billing_address_collection  = each.value.billing_address_collection
  consent_collection          = each.value.consent_collection
  currency                    = each.value.currency
  custom_fields               = each.value.custom_fields
  custom_text                 = each.value.custom_text
  customer_creation           = each.value.customer_creation
  inactive_message            = each.value.inactive_message
  invoice_creation            = each.value.invoice_creation
  managed_payments            = each.value.managed_payments
  metadata                    = each.value.metadata
  name_collection             = each.value.name_collection
  on_behalf_of                = each.value.on_behalf_of
  optional_items              = each.value.optional_items
  payment_intent_data         = each.value.payment_intent_data
  payment_method_collection   = each.value.payment_method_collection
  payment_method_options      = each.value.payment_method_options
  payment_method_types        = each.value.payment_method_types
  phone_number_collection     = each.value.phone_number_collection
  restrictions                = each.value.restrictions
  shipping_address_collection = each.value.shipping_address_collection
  shipping_options            = each.value.shipping_options
  submit_type                 = each.value.submit_type
  subscription_data           = each.value.subscription_data
  tax_id_collection           = each.value.tax_id_collection
  transfer_data               = each.value.transfer_data
}


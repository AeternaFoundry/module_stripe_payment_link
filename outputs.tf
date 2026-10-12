output "payment_links_id" {
  description = "Map of id values across all payment_links, keyed the same as var.payment_links except keys with no id are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.id if v.id != null && length(v.id) > 0 }
}
output "payment_links_active" {
  description = "Map of active values across all payment_links, keyed the same as var.payment_links except keys with no active are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.active if v.active != null }
}
output "payment_links_after_completion" {
  description = "Map of after_completion values across all payment_links, keyed the same as var.payment_links except keys with no after_completion are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.after_completion if v.after_completion != null && length(v.after_completion) > 0 }
}
output "payment_links_allow_promotion_codes" {
  description = "Map of allow_promotion_codes values across all payment_links, keyed the same as var.payment_links except keys with no allow_promotion_codes are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.allow_promotion_codes if v.allow_promotion_codes != null }
}
output "payment_links_application" {
  description = "Map of application values across all payment_links, keyed the same as var.payment_links except keys with no application are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.application if v.application != null && length(v.application) > 0 }
}
output "payment_links_application_fee_amount" {
  description = "Map of application_fee_amount values across all payment_links, keyed the same as var.payment_links except keys with no application_fee_amount are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.application_fee_amount if v.application_fee_amount != null }
}
output "payment_links_application_fee_percent" {
  description = "Map of application_fee_percent values across all payment_links, keyed the same as var.payment_links except keys with no application_fee_percent are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.application_fee_percent if v.application_fee_percent != null }
}
output "payment_links_automatic_tax" {
  description = "Map of automatic_tax values across all payment_links, keyed the same as var.payment_links except keys with no automatic_tax are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.automatic_tax if v.automatic_tax != null && length(v.automatic_tax) > 0 }
}
output "payment_links_billing_address_collection" {
  description = "Map of billing_address_collection values across all payment_links, keyed the same as var.payment_links except keys with no billing_address_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.billing_address_collection if v.billing_address_collection != null && length(v.billing_address_collection) > 0 }
}
output "payment_links_consent_collection" {
  description = "Map of consent_collection values across all payment_links, keyed the same as var.payment_links except keys with no consent_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.consent_collection if v.consent_collection != null && length(v.consent_collection) > 0 }
}
output "payment_links_currency" {
  description = "Map of currency values across all payment_links, keyed the same as var.payment_links except keys with no currency are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "payment_links_custom_fields" {
  description = "Map of custom_fields values across all payment_links, keyed the same as var.payment_links except keys with no custom_fields are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.custom_fields if v.custom_fields != null && length(v.custom_fields) > 0 }
}
output "payment_links_custom_text" {
  description = "Map of custom_text values across all payment_links, keyed the same as var.payment_links except keys with no custom_text are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.custom_text if v.custom_text != null && length(v.custom_text) > 0 }
}
output "payment_links_customer_creation" {
  description = "Map of customer_creation values across all payment_links, keyed the same as var.payment_links except keys with no customer_creation are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.customer_creation if v.customer_creation != null && length(v.customer_creation) > 0 }
}
output "payment_links_inactive_message" {
  description = "Map of inactive_message values across all payment_links, keyed the same as var.payment_links except keys with no inactive_message are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.inactive_message if v.inactive_message != null && length(v.inactive_message) > 0 }
}
output "payment_links_invoice_creation" {
  description = "Map of invoice_creation values across all payment_links, keyed the same as var.payment_links except keys with no invoice_creation are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.invoice_creation if v.invoice_creation != null && length(v.invoice_creation) > 0 }
}
output "payment_links_line_items" {
  description = "Map of line_items values across all payment_links, keyed the same as var.payment_links except keys with no line_items are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.line_items if v.line_items != null && length(v.line_items) > 0 }
}
output "payment_links_livemode" {
  description = "Map of livemode values across all payment_links, keyed the same as var.payment_links except keys with no livemode are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.livemode if v.livemode != null }
}
output "payment_links_managed_payments" {
  description = "Map of managed_payments values across all payment_links, keyed the same as var.payment_links except keys with no managed_payments are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.managed_payments if v.managed_payments != null && length(v.managed_payments) > 0 }
}
output "payment_links_metadata" {
  description = "Map of metadata values across all payment_links, keyed the same as var.payment_links except keys with no metadata are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "payment_links_name_collection" {
  description = "Map of name_collection values across all payment_links, keyed the same as var.payment_links except keys with no name_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.name_collection if v.name_collection != null && length(v.name_collection) > 0 }
}
output "payment_links_object" {
  description = "Map of object values across all payment_links, keyed the same as var.payment_links except keys with no object are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.object if v.object != null && length(v.object) > 0 }
}
output "payment_links_on_behalf_of" {
  description = "Map of on_behalf_of values across all payment_links, keyed the same as var.payment_links except keys with no on_behalf_of are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.on_behalf_of if v.on_behalf_of != null && length(v.on_behalf_of) > 0 }
}
output "payment_links_optional_items" {
  description = "Map of optional_items values across all payment_links, keyed the same as var.payment_links except keys with no optional_items are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.optional_items if v.optional_items != null && length(v.optional_items) > 0 }
}
output "payment_links_payment_intent_data" {
  description = "Map of payment_intent_data values across all payment_links, keyed the same as var.payment_links except keys with no payment_intent_data are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.payment_intent_data if v.payment_intent_data != null && length(v.payment_intent_data) > 0 }
}
output "payment_links_payment_method_collection" {
  description = "Map of payment_method_collection values across all payment_links, keyed the same as var.payment_links except keys with no payment_method_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.payment_method_collection if v.payment_method_collection != null && length(v.payment_method_collection) > 0 }
}
output "payment_links_payment_method_options" {
  description = "Map of payment_method_options values across all payment_links, keyed the same as var.payment_links except keys with no payment_method_options are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.payment_method_options if v.payment_method_options != null && length(v.payment_method_options) > 0 }
}
output "payment_links_payment_method_types" {
  description = "Map of payment_method_types values across all payment_links, keyed the same as var.payment_links except keys with no payment_method_types are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.payment_method_types if v.payment_method_types != null && length(v.payment_method_types) > 0 }
}
output "payment_links_phone_number_collection" {
  description = "Map of phone_number_collection values across all payment_links, keyed the same as var.payment_links except keys with no phone_number_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.phone_number_collection if v.phone_number_collection != null && length(v.phone_number_collection) > 0 }
}
output "payment_links_restrictions" {
  description = "Map of restrictions values across all payment_links, keyed the same as var.payment_links except keys with no restrictions are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.restrictions if v.restrictions != null && length(v.restrictions) > 0 }
}
output "payment_links_shipping_address_collection" {
  description = "Map of shipping_address_collection values across all payment_links, keyed the same as var.payment_links except keys with no shipping_address_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.shipping_address_collection if v.shipping_address_collection != null && length(v.shipping_address_collection) > 0 }
}
output "payment_links_shipping_options" {
  description = "Map of shipping_options values across all payment_links, keyed the same as var.payment_links except keys with no shipping_options are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.shipping_options if v.shipping_options != null && length(v.shipping_options) > 0 }
}
output "payment_links_submit_type" {
  description = "Map of submit_type values across all payment_links, keyed the same as var.payment_links except keys with no submit_type are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.submit_type if v.submit_type != null && length(v.submit_type) > 0 }
}
output "payment_links_subscription_data" {
  description = "Map of subscription_data values across all payment_links, keyed the same as var.payment_links except keys with no subscription_data are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.subscription_data if v.subscription_data != null && length(v.subscription_data) > 0 }
}
output "payment_links_tax_id_collection" {
  description = "Map of tax_id_collection values across all payment_links, keyed the same as var.payment_links except keys with no tax_id_collection are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.tax_id_collection if v.tax_id_collection != null && length(v.tax_id_collection) > 0 }
}
output "payment_links_transfer_data" {
  description = "Map of transfer_data values across all payment_links, keyed the same as var.payment_links except keys with no transfer_data are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.transfer_data if v.transfer_data != null && length(v.transfer_data) > 0 }
}
output "payment_links_url" {
  description = "Map of url values across all payment_links, keyed the same as var.payment_links except keys with no url are omitted"
  value       = { for k, v in stripe_payment_link.payment_links : k => v.url if v.url != null && length(v.url) > 0 }
}


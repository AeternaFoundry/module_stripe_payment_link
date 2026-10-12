variable "payment_links" {
  description = <<EOT
Map of payment_links, attributes below
Required:
    - line_items
Optional:
    - active
    - after_completion
    - allow_promotion_codes
    - application_fee_amount
    - application_fee_percent
    - automatic_tax
    - billing_address_collection
    - consent_collection
    - currency
    - custom_fields
    - custom_text
    - customer_creation
    - inactive_message
    - invoice_creation
    - managed_payments
    - metadata
    - name_collection
    - on_behalf_of
    - optional_items
    - payment_intent_data
    - payment_method_collection
    - payment_method_options
    - payment_method_types
    - phone_number_collection
    - restrictions
    - shipping_address_collection
    - shipping_options
    - submit_type
    - subscription_data
    - tax_id_collection
    - transfer_data
EOT

  type = map(object({
    line_items = list(object({
      adjustable_quantity = optional(object({
        enabled = bool
        maximum = optional(number)
        minimum = optional(number)
      }))
      price = optional(string)
      price_data = optional(object({
        currency = string
        product  = optional(string)
        product_data = optional(object({
          description = optional(string)
          images      = optional(list(string))
          metadata    = optional(map(string))
          name        = string
          tax_code    = optional(string)
          unit_label  = optional(string)
        }))
        recurring = optional(object({
          interval       = string
          interval_count = optional(number)
        }))
        tax_behavior        = optional(string)
        unit_amount         = optional(number)
        unit_amount_decimal = optional(number)
      }))
      quantity = number
    }))
    active = optional(bool)
    after_completion = optional(object({
      hosted_confirmation = optional(object({
        custom_message = optional(string)
      }))
      redirect = optional(object({
        url = string
      }))
      type = string
    }))
    allow_promotion_codes   = optional(bool)
    application_fee_amount  = optional(number)
    application_fee_percent = optional(number)
    automatic_tax = optional(object({
      enabled = bool
      liability = optional(object({
        account = optional(string)
        type    = string
      }))
    }))
    billing_address_collection = optional(string)
    consent_collection = optional(object({
      payment_method_reuse_agreement = optional(object({
        position = string
      }))
      promotions       = optional(string)
      terms_of_service = optional(string)
    }))
    currency = optional(string)
    custom_fields = optional(list(object({
      dropdown = optional(object({
        default_value = optional(string)
        options = list(object({
          label = string
          value = string
        }))
      }))
      key = string
      label = object({
        custom = string
        type   = string
      })
      numeric = optional(object({
        default_value  = optional(string)
        maximum_length = optional(number)
        minimum_length = optional(number)
      }))
      optional = optional(bool)
      text = optional(object({
        default_value  = optional(string)
        maximum_length = optional(number)
        minimum_length = optional(number)
      }))
      type = string
    })))
    custom_text = optional(object({
      after_submit = optional(object({
        message = string
      }))
      shipping_address = optional(object({
        message = string
      }))
      submit = optional(object({
        message = string
      }))
      terms_of_service_acceptance = optional(object({
        message = string
      }))
    }))
    customer_creation = optional(string)
    inactive_message  = optional(string)
    invoice_creation = optional(object({
      enabled = bool
      invoice_data = optional(object({
        account_tax_ids = optional(list(string))
        custom_fields = optional(list(object({
          name  = string
          value = string
        })))
        description = optional(string)
        footer      = optional(string)
        issuer = optional(object({
          account = optional(string)
          type    = string
        }))
        metadata = optional(map(string))
        rendering_options = optional(object({
          amount_tax_display = optional(string)
          template           = optional(string)
        }))
      }))
    }))
    managed_payments = optional(object({
      enabled = optional(bool)
    }))
    metadata = optional(map(string))
    name_collection = optional(object({
      business = optional(object({
        enabled  = bool
        optional = optional(bool)
      }))
      individual = optional(object({
        enabled  = bool
        optional = optional(bool)
      }))
    }))
    on_behalf_of = optional(string)
    optional_items = optional(list(object({
      adjustable_quantity = optional(object({
        enabled = bool
        maximum = optional(number)
        minimum = optional(number)
      }))
      price    = string
      quantity = number
    })))
    payment_intent_data = optional(object({
      capture_method              = optional(string)
      description                 = optional(string)
      metadata                    = optional(map(string))
      setup_future_usage          = optional(string)
      statement_descriptor        = optional(string)
      statement_descriptor_suffix = optional(string)
      transfer_group              = optional(string)
    }))
    payment_method_collection = optional(string)
    payment_method_options = optional(object({
      card = optional(object({
        restrictions = optional(object({
          brands_blocked = optional(list(string))
        }))
      }))
    }))
    payment_method_types = optional(list(string))
    phone_number_collection = optional(object({
      enabled = bool
    }))
    restrictions = optional(object({
      completed_sessions = object({
        limit = number
      })
    }))
    shipping_address_collection = optional(object({
      allowed_countries = list(string)
    }))
    shipping_options = optional(list(object({
      shipping_rate = optional(string)
    })))
    submit_type = optional(string)
    subscription_data = optional(object({
      description = optional(string)
      invoice_settings = optional(object({
        issuer = optional(object({
          account = optional(string)
          type    = string
        }))
      }))
      metadata          = optional(map(string))
      trial_period_days = optional(number)
      trial_settings = optional(object({
        end_behavior = object({
          missing_payment_method = string
        })
      }))
    }))
    tax_id_collection = optional(object({
      enabled  = bool
      required = optional(string)
    }))
    transfer_data = optional(object({
      amount      = optional(number)
      destination = string
    }))
  }))
}


variable "restricted_poll_type" {
  type = "string"
}

variable "unrestricted_poll_type" {
  type = "string"
}

variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_security" {
  type = "string"
}

variable "asset_type_default" {
  type = "string"
}

variable "default_change_role_tasks" {
  type = "string"
  default = "1"
}

variable "unverified" {
  type = "string"
}

variable "kyc_corporate" {
  type = "string"
}

resource tokend_key_value "deposit_credentials" {
  key         = "deposit_credentials"
  value_type  = "string"
  value       = "{\"accountName\":\"SAFERE INVESTMENTS VCC\",\"currentAccounts\":[\"SGD: 141-264556-001\",\"USD: 260-326830-178\",\"GBP: 260-326830-179\",\"EUR: 260-326830-180\"],\"bankName\":\"HSBC Bank (Singapore) Limited\",\"branchAddress\":\"9 Battery Road #12-01 MYP Centre Singapore 049910\",\"bankCode\":\"7232\",\"SWIFTCode\":\"HSBCSGSG\"}"
}

resource tokend_key_value "min_investment_usd" {
  key         = "min_investment:USD"
  value_type  = "uint32"
  value       = "5000"
}

resource tokend_key_value "min_investment_eur" {
  key         = "min_investment:EUR"
  value_type  = "uint32"
  value       = "5000"
}

resource tokend_key_value "min_investment_sgd" {
  key         = "min_investment:SGD"
  value_type  = "uint32"
  value       = "5000"
}

resource tokend_key_value "min_investment_gbp" {
  key         = "min_investment:GBP"
  value_type  = "uint32"
  value       = "5000"
}

resource tokend_key_value "poll_type_restricted" {
  key = "poll_type:restricted"
  value_type = "uint32"
  value = "${var.restricted_poll_type}"
}

resource tokend_key_value "poll_type_unrestricted" {
  key = "poll_type:unrestricted"
  value_type = "uint32"
  value = "${var.unrestricted_poll_type}"
}

resource tokend_key_value "asset_type_equity" {
  key = "asset_type:equity"
  value_type = "uint32"
  value = "${var.asset_type_kyc}"
}

resource tokend_key_value "asset_type_security" {
  key = "asset_type:security"
  value_type = "uint32"
  value = "${var.asset_type_security}"
}

resource tokend_key_value "asset_type_default" {
    key = "asset_type:default"
    value_type = "uint32"
    value = "${var.asset_type_default}"
}

resource tokend_key_value "change_role_task-submit_auto_verification" {
    key = "change_role_task:submit_auto_verification"
    value_type = "uint32"
    value = "1024"
}

resource tokend_key_value "change_role_task-complete_auto_verification" {
    key = "change_role_task:complete_auto_verification"
    value_type = "uint32"
    value = "2048"
}

resource tokend_key_value "change_role_task-manual_review_required" {
    key = "change_role_task:manual_review_required"
    value_type = "uint32"
    value = "4096"
}

resource tokend_key_value "default_withdraw_tasks" {
  key        = "withdrawal_tasks:*"
  value_type = "uint32"
  value      = "2048"
}

resource tokend_key_value "default_change_role_tasks" {
  key        = "change_role_tasks:*:*"
  value_type = "uint32"
  value      = "${var.default_change_role_tasks}"
}

resource tokend_key_value "asset_create_tasks" {
  key        = "asset_create_tasks"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "limits_update_tasks" {
  key        = "limits_update_tasks"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "asset_update_default" {
  key        = "asset_update_tasks:*"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "asset_update_task" {
  key        = "asset_update_tasks"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "sale_create_tasks" {
  key        = "sale_create_tasks:*"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "sale_update_tasks" {
  key        = "sale_update_tasks:*"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "issuance_tasks_default" {
  key        = "issuance_tasks:*"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "preissuance_tasks_default" {
  key        = "preissuance_tasks:*"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "kyc_recovery_enabled" {
  key        = "kyc_recovery_enabled"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "create_kyc_recovery_tasks" {
  key = "create_kyc_recovery_tasks"
  value_type = "uint32"
  value = "0"
}

resource tokend_key_value "create_poll_tasks" {
  key        = "create_poll_tasks:*"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "atomic_swap_ask_tasks" {
  key = "atomic_swap_ask_tasks"
  value_type = "uint32"
  value = "0"
}

resource tokend_key_value "atomic_swap_bid_tasks" {
  key = "atomic_swap_bid_tasks:*"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "bridges_enabled" {
  key        = "bridges_enabled"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "unverified_to_kyc_corporate_change_role_tasks" {
  key        = "change_role_tasks:${var.unverified}:${var.kyc_corporate}"
  value_type = "uint32"
  value      = "0"
}

variable restricted_poll_type {
  type = "string"
  default = "3"
}

variable unrestricted_poll_type {
  type = "string"
  default = "4"
}

variable asset_type_default {
  type = "string"
  default = "0"
}

variable default_change_role_tasks {
  type = "string"
  default = "1"
}

variable asset_type_kyc {
  type = "string"
  default = "1"
}

variable asset_type_security {
  type = "string"
  default = "2"
}

// creates basic account rules
module "account_rules" {
  source = "modules/account_rules"
  restricted_poll_type = "${var.restricted_poll_type}"
  asset_type_default = "${var.asset_type_default}"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_security = "${var.asset_type_security}"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  unverified_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
  ]

  general_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_default_buy_offer_creator}",
    "${module.account_rules.security_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_kyc_buy_offer_creator}",
    "${module.account_rules.security_for_kyc_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.default_for_security_buy_offer_creator}",
    "${module.account_rules.default_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_for_security_buy_offer_creator}",
    "${module.account_rules.kyc_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.sale_time_updater}",
  ]

  syndicate_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.asset_creator}",
    "${module.account_rules.asset_remover}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_default_buy_offer_creator}",
    "${module.account_rules.security_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_kyc_buy_offer_creator}",
    "${module.account_rules.security_for_kyc_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.default_for_security_buy_offer_creator}",
    "${module.account_rules.default_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_for_security_buy_offer_creator}",
    "${module.account_rules.kyc_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.sale_time_updater}",
    "${module.account_rules.sale_manager}",
    "${module.account_rules.asset_updater_pro}",
  ]

  us_accredited = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_default_buy_offer_creator}",
    "${module.account_rules.security_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_kyc_buy_offer_creator}",
    "${module.account_rules.security_for_kyc_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.default_for_security_buy_offer_creator}",
    "${module.account_rules.default_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_for_security_buy_offer_creator}",
    "${module.account_rules.kyc_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
  ]

  financial = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.aml_alert_creator}",
  ]

  kyc_corporate = [
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}"
  ]

  blocked_rules = []
}

// create defaul signer rules
module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  default_rules = [
    "1",
  ]

  kyc_aml_admin = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.aml_alert_reviewer}",
    "${module.signer_rules.kyc_request_reviewer}",
    "${module.signer_rules.role_updater}",
  ]

  license_admin = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.license_creator}",
    "${module.signer_rules.stamp_creator}",
  ]

  issuance_signer = [
    "${module.signer_rules.issuance_creator}"
  ]

  create_kyc = [
  "${module.signer_rules.kyc_recovery_creator}",
  ]

  pending_offer_signer = [
    "${module.signer_rules.buy_offer_creator}",
    "${module.signer_rules.offer_remover}",
    "${module.signer_rules.sale_participant}",
    "${module.signer_rules.balance_creator}",
  ]

  financial_signer = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.sale_checker}",
    "${module.signer_rules.aml_alert_creator}",
    "${module.signer_rules.withdrawal_reviewer}",
    "${module.signer_rules.issuance_creator}",
    "${module.signer_rules.sale_closer}",
  ]
}

module "key_values" {
  source = "modules/key_values"
  restricted_poll_type = "${var.restricted_poll_type}"
  unrestricted_poll_type = "${var.unrestricted_poll_type}"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_security = "${var.asset_type_security}"
  asset_type_default = "${var.asset_type_default}"
  default_change_role_tasks = "${var.default_change_role_tasks}"
  unverified = "${module.account_roles.unverified_id}"
  kyc_corporate = "${module.account_roles.kyc_corporate_id}"
}

module "assets" {
  source = "modules/assets"
}

module "external_system_type_pool_entry" {
  source = "modules/external_system_type_pool_entry"
}

module "signers" {
  source = "modules/signers"
  license_signer_role = "${module.signer_roles.license_signer_role}"
  financial_signer_role = "${module.signer_roles.financial_signer_role}"
}

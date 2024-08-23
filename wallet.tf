resource "random_string" "adb_wallet_password" {
  length                 = 16
  special                = true
  override_special       = "-.!"
}

resource "oci_database_autonomous_database_wallet" "adb_wallet" {
  autonomous_database_id = oci_database_autonomous_database.autonomous_db.id
  password               = random_string.adb_wallet_password.result
  base64_encode_content  = "true"
}

resource "local_file" "adb_wallet_file" {
  content                = oci_database_autonomous_database_wallet.adb_wallet.content
  filename               = "${path.module}/adb_wallet.zip"
}

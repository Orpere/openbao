ui = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_cert_file = "/etc/letsencrypt/live/openbao.orp-dev.eu/fullchain.pem"
  tls_key_file  = "/etc/letsencrypt/live/openbao.orp-dev.eu/privkey.pem"
}

storage "file" {
  path = "/opt/openbao/data"
}

api_addr = "https://openbao.orp-dev.eu:8200"
cluster_addr = "https://openbao.orp-dev.eu:8201"
disable_mlock = true

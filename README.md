# README

## create a .env on root dir

```.env
HOST=<host>
CF_API_TOKEN=<token>
```

## change your config hcl

```hcl
ui = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_cert_file = "/etc/letsencrypt/live/<host>/fullchain.pem"
  tls_key_file  = "/etc/letsencrypt/live/<host>/privkey.pem"
}

storage "file" {
  path = "/opt/openbao/data"
}

api_addr = "https://<host>:8200"
cluster_addr = "https://<host>:8201"
disable_mlock = true
```

## init vault

```bash
docker exec -d openbao bao operator init 
```

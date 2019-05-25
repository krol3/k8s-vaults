## Authorization

Policies are authored in HCL

```
path "secret/data/*" {
  capabilities = ["create"]
}
path "secret/data/foo" {
  capabilities = ["read"]
}
```

- vault policy fmt my-policy.hcl
- vault policy write my-policy my-policy.hcl
- vault policy list

```
default
myapp-kv-ro
root
```

vault policy read myapp-kv-ro

```
# For K/V v1 secrets engine
path "secret/myapp/*" {
    capabilities = ["read", "list"]
}

# For K/V v2 secrets engine
path "secret/data/myapp/*" {
    capabilities = ["read", "list"]
}
```

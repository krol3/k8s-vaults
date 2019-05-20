# If working with K/V v1
path "secret/myapp/*" {
    capabilities = ["read", "list"]
}

# If working with K/V v2
path "secret/data/myapp/*" {
    capabilities = ["read", "list"]
}

## Vault basics

secret, aws, database

```
vault kv put secret/test user_test=password

Key              Value
---              -----
created_time     2019-05-24T22:59:19.990832681Z
deletion_time    n/a
destroyed        false
version          1
```

```
vault kv put secret/app user_test=password_test user_ci=password_ci
vault kv get secret/app

====== Metadata ======
Key              Value
---              -----
created_time     2019-05-24T22:58:48.458256531Z
deletion_time    n/a
destroyed        false
version          2

====== Data ======
Key          Value
---          -----
user_ci      password_ci
user_test    password_test
```

```
vault secrets enable -path=demo kv

vault secrets list

Path          Type         Accessor              Description
----          ----         --------              -----------
cubbyhole/    cubbyhole    cubbyhole_85150668    per-token private secret storage
demo/         kv           kv_b6c6e62f           n/a
identity/     identity     identity_f182bb0f     identity store
secret/       kv           kv_e1b6f571           key/value secret storage
sys/          system       system_5ff9284f       system endpoints used for control, policy and debugging
```

```
vault write demo/my-secret value="s3c(eT"
vault write demo/my-secret02 value="s3c(eT"

vault list demo

Keys
----
my-secret
my-secret02
```

## Authentication

vault token create

```
Key                  Value
---                  -----
token                s.LowdaIQ1DnrhrbKDNFLND5UR
token_accessor       gTAGLIDTWNAIrNHR7XDMidtZ
token_duration       ∞
token_renewable      false
token_policies       ["root"]
identity_policies    []
policies             ["root"]
```

vault login s.LowdaIQ1DnrhrbKDNFLND5UR

Auth Methods: GitHub, LDAP, AppRole, etc.

vault auth enable -path=my-github github

vault auth list

```
Path           Type          Accessor                    Description
----           ----          --------                    -----------
kubernetes/    kubernetes    auth_kubernetes_8f045bf6    n/a
my-github/     github        auth_github_5aa574ff        n/a
token/         token         auth_token_5f4764ed         token based credentials
userpass/      userpass      auth_userpass_a2eee5aa      n/a
```

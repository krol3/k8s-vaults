## dynamic secrets

vault secrets enable -path=aws aws

```
vault write aws/config/root \
    access_key=xxxxxxxxxx \
    secret_key=xxxxxxxxxx \
    region=us-east-1

Success! Data written to: aws/config/root

vault write aws/roles/ec2_auth-role \
        credential_type=iam_user \
        policy_document=-<<EOF

  "Effect": "Allow",
      "Action": [
        "ec2:*"
      ],
      "Resource": [
        "*"

Success! Data written to: aws/roles/ec2_auth-role
```

# Helm chart to deploy gotrue

## TLDR

Checkout the [`values.yaml`](./gotrue/values.yaml) and accompanying [`README`](./gotrue/README.md) with auto-generated docs for the values you'd like to use.

```bash
# add the repo to your helm repos
helm repo add gotrue https://jessebot.github.io/gotrue-helm

# install the helm chart
helm install gotrue gotrue/gotrue \
 --set gotrue.smtp.adminEmail="test@myemailhost.com" \
 --set gotrue.smtp.host="myemailhost.com" \
 --set gotrue.smtp.password="mytestpassword" \
 --set gotrue.smtp.port="587" \
 --set gotrue.smtp.senderName="friend" \
 --set gotrue.smtp.user="myemailuser"
```

## Status
Under development still, but happy to review pull requests and issues :)

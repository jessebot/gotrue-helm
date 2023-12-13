# Helm chart to deploy gotrue
<a href="https://github.com/small-hack/gotrue-helm/releases"><img src="https://img.shields.io/github/v/release/small-hack/gotrue-helm?style=plastic&labelColor=blue&color=036440&logo=GitHub&logoColor=white"></a>

An unofficial helm chart for deploying [supabase/gotrue](https://github.com/supabase/gotrue) on Kubernetes.

## TLDR

Checkout the [`values.yaml`](./charts/gotrue/values.yaml) and accompanying [`README`](./charts/gotrue/README.md) with auto-generated docs for the values you'd like to use.

```bash
# add the repo to your helm repos
helm repo add gotrue https://small-hack.github.io/gotrue-helm

# install the helm chart
helm install gotrue gotrue/gotrue \
 --set gotrue.smtp.adminEmail="test@myemailhost.com" \
 --set gotrue.smtp.host="myemailhost.com" \
 --set gotrue.smtp.password="mytestpassword" \
 --set gotrue.smtp.senderName="friend" \
 --set gotrue.smtp.user="myemailuser"
```

## Database Notes

This helm chart does not fully setup a database for you, yet. To do that, you'll need to run:

```sql
CREATE USER supabase_admin LOGIN CREATEROLE CREATEDB REPLICATION BYPASSRLS;
CREATE USER supabase_auth_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION PASSWORD 'mysecurepassword';
CREATE SCHEMA IF NOT EXISTS auth AUTHORIZATION supabase_auth_admin;
GRANT CREATE ON DATABASE postgres TO supabase_auth_admin;
ALTER USER supabase_auth_admin SET search_path = 'auth';
```

ref: https://github.com/supabase/gotrue/blob/master/init_postgres.sh

Alternatively, you can use the built-in Postgresql sub-chart provided by Bitnami, by setting `postgres.enabled` to `true` and then uncommenting the suggested hbaconf and initdb.scripts section of the values.yaml here:
https://github.com/jessebot/gotrue-helm/blob/64aa159167e4de275f2b3169577ee3303ab62717/charts/gotrue/values.yaml#L377-L394


## Status
Under development still, but happy to review pull requests and issues :)

# Helm chart to deploy gotrue

This helm chart does not fully setup a database for you. To do that, you'll need to run:

```sql
CREATE USER supabase_admin LOGIN CREATEROLE CREATEDB REPLICATION BYPASSRLS;
CREATE USER supabase_auth_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION PASSWORD 'mysecurepassword';
CREATE SCHEMA IF NOT EXISTS auth AUTHORIZATION supabase_auth_admin;
GRANT CREATE ON DATABASE postgres TO supabase_auth_admin;
ALTER USER supabase_auth_admin SET search_path = 'auth';
```

ref: https://github.com/supabase/gotrue/blob/master/init_postgres.sh

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
 --set gotrue.smtp.senderName="friend" \
 --set gotrue.smtp.user="myemailuser"
```

## Status
Under development still, but happy to review pull requests and issues :)

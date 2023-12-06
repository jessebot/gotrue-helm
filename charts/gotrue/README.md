# gotrue

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.125.1](https://img.shields.io/badge/AppVersion-v2.125.1-informational?style=flat-square)

A Helm chart for deploying supabase's gotrue on Kubernetes

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jessebot |  | <https://github.com/jessebot> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | postgresql | 13.2.* |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| extraEnv | list | `[]` | extra environment variables you'd like to pass to the gotrue pod in the gotrue deployment |
| fullnameOverride | string | `""` |  |
| gotrue.apiHost | string | `"localhost"` | GOTRUE_API_HOST - api host |
| gotrue.cookie | object | `{"domain":"locahost","key":"sb","maxVerifiedFactors":"10"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L223 |
| gotrue.database.database | string | `"gotrue"` | name of the database on the databsae hostname ignored if databaseUrl or existingSecret are not empty |
| gotrue.database.databaseUrl | string | `""` | database connection url e.g. postgres://supabase_auth_admin:root@postgresql.gotrue.svc.cluster.local:5432/gotrue only required if you don't pass in driver, user, host, port, and password or sslmode/sslcert/sslrootcert/sslkey. |
| gotrue.database.driver | string | `"postgres"` | which database backend to use for gotrue ignored if databaseUrl or existingSecret are not empty |
| gotrue.database.existingSecret | string | `""` | use an existingSecret for database. must contain keys: DATABASE_URL, GOTRUE_DB_DRIVER, DB_NAMESPACE |
| gotrue.database.host | string | `"postgresql.gotrue.svc.cluster.local"` | database hostname - ignored if databaseUrl or existingSecret are not empty |
| gotrue.database.namespace | string | `"auth"` | database namespace - sets the schema name |
| gotrue.database.password | string | `"mysecurepassword"` | password to connect to database with ignored if databaseUrl or existingSecret are not empty or if sslmode is not empty |
| gotrue.database.port | string | `"5432"` | database port - ignored if databaseUrl or existingSecret are not empty |
| gotrue.database.sslCert | string | `""` | path to TLS cert for connecting to the database with TLS ignored if databaseUrl or existingSecret are not empty. |
| gotrue.database.sslKey | string | `""` | path to TLS key for connecting to the database with TLS ignored if databaseUrl or existingSecret are not empty. |
| gotrue.database.sslMode | string | `""` | mode for connecting to database with TLS e.g. verify-full ignored if databaseUrl or existingSecret are not empty. |
| gotrue.database.sslRootCert | string | `""` | path to root TLS cert for connecting to the database with TLS ignored if databaseUrl or existingSecret are not empty. |
| gotrue.database.user | string | `"supabase_auth_admin"` | database username - ignored if databaseUrl or existingSecret are not empty |
| gotrue.external.discord.clientID | string | `""` | client id |
| gotrue.external.discord.enabled | bool | `false` | enable discord as your external auth provider |
| gotrue.external.discord.redirectUri | string | `""` | redirect URI |
| gotrue.external.discord.secret | string | `""` | client secret |
| gotrue.external.email.enabled | bool | `true` | enable email auth - GOTRUE_EXTERNAL_EMAIL_ENABLED |
| gotrue.external.existingSecret | string | `""` | use an existing kubernetes secret for external provider credentials must contain environment variables that can be exported. ref: https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env |
| gotrue.external.flowStateExpiryDuration | string | `"300s"` | PKCE Config https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L171 |
| gotrue.external.github.clientID | string | `""` | client id |
| gotrue.external.github.enabled | bool | `false` | enable github as your external auth provider |
| gotrue.external.github.redirectUri | string | `""` | redirect URI |
| gotrue.external.github.secret | string | `""` | client secret |
| gotrue.external.google.clientID | string | `""` | client id |
| gotrue.external.google.enabled | bool | `false` | enable google as your external auth provider |
| gotrue.external.google.redirectUri | string | `""` | redirect URI |
| gotrue.external.google.secret | string | `""` | client secret |
| gotrue.external.ios.bundleID | string | `"com.supabase.gotrue"` | GOTRUE_EXTERNAL_IOS_BUNDLE_ID |
| gotrue.external.phone.enabled | bool | `true` | enable phone auth - GOTRUE_EXTERNAL_PHONE_ENABLED |
| gotrue.external.saml.apiBase | string | `"http://localhost:9999"` |  |
| gotrue.external.saml.enabled | bool | `false` | enable a saml provider for your external auth provider |
| gotrue.external.saml.metadataUrl | string | `""` | metadata URL for saml |
| gotrue.external.saml.name | string | `"auth0"` |  |
| gotrue.external.saml.signingCert | string | `""` |  |
| gotrue.external.saml.signingKey | string | `""` |  |
| gotrue.externalUrl | string | `"http://0.0.0.0:9999"` | API_EXTERNAL_URL - gotrue api external URL |
| gotrue.jwt.adminRoles | string | `"supabase_admin,service_role"` | roles to use for admin - ignored if gotrue.jwt.existingSecret is not empty |
| gotrue.jwt.aud | string | `"authenticated"` | authentication check - ignored if gotrue.jwt.existingSecret is not empty |
| gotrue.jwt.defaultGroupName | string | `"authenticated"` | default group name - ignored if gotrue.jwt.existingSecret is not empty |
| gotrue.jwt.existingSecret | string | `""` | use an existing Kubernetes secret for jwt secret |
| gotrue.jwt.exp | string | `"3600"` | expiration of jwt token - ignored if gotrue.jwt.existingSecret is not empty |
| gotrue.jwt.secret | string | `""` | set the JWT secret for gotrue - ignored if gotrue.jwt.existingSecret is not empty |
| gotrue.logLevel | string | `"debug"` | GOTRUE_LOG_LEVEL - logging verbosity |
| gotrue.mailer.autoConfirm | bool | `false` | auto confirm accounts |
| gotrue.mailer.secureEmailChangeEnabled | bool | `true` | GOTRUE_MAILER_SECURE_EMAIL_CHANGE_ENABLED value |
| gotrue.mailer.subjects | object | `{"confirmation":"Confirm your Email","emailChange":"Confirm Email Change","invite":"You have been invited","magicLink":"Your Magic Link","recovery":"Reset Your Password"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L33 |
| gotrue.mailer.subjects.confirmation | string | `"Confirm your Email"` | GOTRUE_MAILER_SUBJECTS_CONFIRMATION |
| gotrue.mailer.subjects.emailChange | string | `"Confirm Email Change"` | GOTRUE_MAILER_SUBJECTS_EMAIL_CHANGE |
| gotrue.mailer.subjects.invite | string | `"You have been invited"` | GOTRUE_MAILER_SUBJECTS_INVITE |
| gotrue.mailer.subjects.magicLink | string | `"Your Magic Link"` | GOTRUE_MAILER_SUBJECTS_MAGIC_LINK |
| gotrue.mailer.subjects.recovery | string | `"Reset Your Password"` | GOTRUE_MAILER_SUBJECTS_RECOVERY |
| gotrue.mailer.urlPaths.confirmation | string | `"/verify"` | GOTRUE_MAILER_URLPATHS_CONFIRMATION |
| gotrue.mailer.urlPaths.emailChange | string | `"/verify"` | GOTRUE_MAILER_URLPATHS_EMAIL_CHANGE |
| gotrue.mailer.urlPaths.invite | string | `"/verify"` | GOTRUE_MAILER_URLPATHS_INVITE |
| gotrue.mailer.urlPaths.recovery | string | `"/verify"` | GOTRUE_MAILER_URLPATHS_RECOVERY |
| gotrue.operatorToken | string | `"unused-operator-token"` | GOTRUE_OPERATOR_TOKEN |
| gotrue.port | string | `"9999"` | PORT - port to use for gotrue |
| gotrue.rateLimit.emailSent | string | `"100"` | GOTRUE_RATE_LIMIT_EMAIL_SENT |
| gotrue.rateLimit.header | string | `"X-Forwarded-For"` | GOTRUE_RATE_LIMIT_HEADER |
| gotrue.security.captcha.enabled | bool | `false` | GOTRUE_SECURITY_CAPTCHA_ENABLED |
| gotrue.security.captcha.provider | string | `"hcaptcha"` | GOTRUE_SECURITY_CAPTCHA_PROVIDER |
| gotrue.security.captcha.secret | string | `"0x0000000000000000000000000000000000000000"` | GOTRUE_SECURITY_CAPTCHA_SECRET |
| gotrue.security.captcha.sessionKey | string | `""` | GOTRUE_SESSION_KEY |
| gotrue.security.captcha.timeout | string | `"10s"` | GOTRUE_SECURITY_CAPTCHA_TIMEOUT |
| gotrue.security.refreshToken.reuseInterval | string | `"0"` | GOTRUE_SECURITY_REFRESH_TOKEN_REUSE_INTERVAL |
| gotrue.security.refreshToken.rotationEnabled | bool | `false` | GOTRUE_SECURITY_REFRESH_TOKEN_ROTATION_ENABLED |
| gotrue.security.updatePasswordRequireReauth | bool | `false` | GOTRUE_SECURITY_UPDATE_PASSWORD_REQUIRE_REAUTHENTICATION |
| gotrue.signup.disable | bool | `false` | disable new user signup - GOTRUE_DISABLE_SIGNUP |
| gotrue.siteUrl | string | `"http://localhost:3000"` | GOTRUE_SITE_URL - siteUrl to use for gotrue |
| gotrue.smtp.adminEmail | string | `""` | smtp admin email addresss - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.smtp.existingSecret | string | `""` | use an existing kubernetes secret for SMTP credentials |
| gotrue.smtp.host | string | `""` | smtp hostname - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.smtp.maxFrequency | string | `"5s"` | smtp max frequency - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.smtp.password | string | `""` | smtp password - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.smtp.port | string | `"587"` | smtp port - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.smtp.senderName | string | `""` | name of user to send from - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.smtp.user | string | `""` | smtp user - ignored if gotrue.smtp.existingSecret not empty |
| gotrue.uriAllowList | string | `"*"` | uri allow list e.g. ["http://localhost:3000"] |
| gotrue.webhook.events | string | `"validate,signup,login"` | GOTRUE_WEBHOOK_EVENTS |
| gotrue.webhook.retries | string | `"5"` | GOTRUE_WEBHOOK_RETRIES |
| gotrue.webhook.secret | string | `"test_secret"` | GOTRUE_WEBHOOK_SECRET |
| gotrue.webhook.timeoutSec | string | `"3"` | GOTRUE_WEBHOOK_TIMEOUT_SEC |
| gotrue.webhook.url | string | `"http://register-lambda:3000/"` | GOTRUE_WEBHOOK_URL |
| image.pullPolicy | string | `"IfNotPresent"` | image pullPolicy, set to Always if using latest tag |
| image.repository | string | `"supabase/gotrue"` | image repo for the gotrue image |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. ref: https://hub.docker.com/r/supabase/gotrue/tags |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `false` | enable ingress, access from outside the cluster |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.enabled | bool | `false` |  |
| postgresql.fullnameOverride | string | `"postgresql"` |  |
| postgresql.global.postgresql.auth | object | `{"database":"gotrue","existingSecret":"","password":"changeme","postgresPassword":"changeme","secretKeys":{"adminPasswordKey":"","replicationPasswordKey":"","userPasswordKey":""},"username":"gotrue"}` | global.postgresql.auth overrides postgresql.auth |
| postgresql.global.postgresql.auth.existingSecret | string | `""` | Name of existing secret to use for PostgreSQL credentials. auth.postgresPassword, auth.password, and auth.replicationPassword will be ignored and picked up from this secret. secret might also contains the key ldap-password if LDAP is enabled. ldap.bind_password will be ignored and picked from this secret in this case. |
| postgresql.global.postgresql.auth.secretKeys | object | `{"adminPasswordKey":"","replicationPasswordKey":"","userPasswordKey":""}` | Names of keys in existing secret to use for PostgreSQL credentials |
| postgresql.primary.persistence.enabled | bool | `false` |  |
| postgresql.primary.persistence.existingClaim | string | `""` |  |
| postgresql.primary.persistence.storageClass | string | `""` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service | object | `{"port":80,"targetPort":9999,"type":"ClusterIP"}` | service for gotrue |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)

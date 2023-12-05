# gotrue

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.125.1](https://img.shields.io/badge/AppVersion-v2.125.1-informational?style=flat-square)

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
| fullnameOverride | string | `""` |  |
| gotrue.adminPassword | string | `""` | set the admin password for gotrue - ignored if gotrue.existingSecret is not empty |
| gotrue.apiHost | string | `"localhost"` | api host |
| gotrue.cookie | object | `{"domain":"locahost","key":"sb","maxVerifiedFactors":"10"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L223 |
| gotrue.database.connectionUrl | string | `"postgres://supabase_auth_admin:root@postgresql.gotrue.svc.cluster.local:5432/gotrue"` | database connection url |
| gotrue.database.driver | string | `"postgres"` | which database backend to use for gotrue |
| gotrue.database.namespace | string | `"auth"` | database namespace - sets the schema name |
| gotrue.existingSecret | string | `""` | use an existing secret for gotrue env vars |
| gotrue.external.discord.clientID | string | `""` | client id |
| gotrue.external.discord.enabled | bool | `false` | enable discord as your external auth provider |
| gotrue.external.discord.redirectUri | string | `""` | redirect URI |
| gotrue.external.discord.secret | string | `""` | client secret |
| gotrue.external.email.enabled | bool | `true` |  |
| gotrue.external.flowStateExpiryDuration | string | `"300s"` | PKCE Config https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L171 |
| gotrue.external.github.clientID | string | `""` | client id |
| gotrue.external.github.enabled | bool | `false` | enable github as your external auth provider |
| gotrue.external.github.redirectUri | string | `""` | redirect URI |
| gotrue.external.github.secret | string | `""` | client secret |
| gotrue.external.google.clientID | string | `""` | client id |
| gotrue.external.google.enabled | bool | `false` | enable google as your external auth provider |
| gotrue.external.google.redirectUri | string | `""` | redirect URI |
| gotrue.external.google.secret | string | `""` | client secret |
| gotrue.external.ios | object | `{"bundleID":"com.supabase.gotrue"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L52C1-L52C1 |
| gotrue.external.phone.enabled | bool | `true` |  |
| gotrue.external.saml.apiBase | string | `"http://localhost:9999"` |  |
| gotrue.external.saml.enabled | bool | `false` | enable a saml provider for your external auth provider |
| gotrue.external.saml.metadataUrl | string | `""` | metadata URL for saml |
| gotrue.external.saml.name | string | `"auth0"` |  |
| gotrue.external.saml.signingCert | string | `""` |  |
| gotrue.external.saml.signingKey | string | `""` |  |
| gotrue.externalUrl | string | `"http://localhost:9999"` | gotrue api external URL |
| gotrue.jwt.adminRoles | string | `"supabase_admin,service_role"` | roles to use for admin |
| gotrue.jwt.aud | string | `"authenticated"` | authentication check |
| gotrue.jwt.defaultGroupName | string | `"authenticated"` | default group name |
| gotrue.jwt.exp | string | `"3600"` | expiration of jwt token |
| gotrue.jwt.secret | string | `""` | set the JWT secret for gotrue |
| gotrue.logLevel | string | `"debug"` |  |
| gotrue.mailer.autoConfirm | bool | `false` | auto confirm accounts |
| gotrue.mailer.secureEmailChangeEnabled | bool | `true` |  |
| gotrue.mailer.subjects | object | `{"confirmation":"Confirm your Email","emailChange":"Confirm Email Change","invite":"You have been invited","magicLink":"Your Magic Link","recovery":"Reset Your Password"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L33 |
| gotrue.mailer.urlPaths | object | `{"confirmation":"/verify","emailChange":"/verify","invite":"/verify","recovery":"/verify"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L29 |
| gotrue.operatorToken | string | `"unused-operator-token"` |  |
| gotrue.port | string | `"9999"` | port to use for gotrue |
| gotrue.rateLimit.emailSent | string | `"100"` |  |
| gotrue.rateLimit.header | string | `"X-Forwarded-For"` |  |
| gotrue.security.captcha.enabled | bool | `false` |  |
| gotrue.security.captcha.provider | string | `"hcaptcha"` |  |
| gotrue.security.captcha.secret | string | `"0x0000000000000000000000000000000000000000"` |  |
| gotrue.security.captcha.sessionKey | string | `""` |  |
| gotrue.security.captcha.timeout | string | `"10s"` |  |
| gotrue.security.refreshToken.reuseInterval | string | `"0"` |  |
| gotrue.security.refreshToken.rotationEnabled | bool | `false` |  |
| gotrue.security.updatePasswordRequireReauth | bool | `false` |  |
| gotrue.signup.disable | bool | `false` |  |
| gotrue.siteUrl | string | `"http://localhost:3000"` | siteUrl to use for gotrue |
| gotrue.smtp.adminEmail | string | `""` | smtp admin email addresss |
| gotrue.smtp.host | string | `""` | smtp hostname |
| gotrue.smtp.maxFrequency | string | `"5s"` | smtp max frequency |
| gotrue.smtp.password | string | `""` | smtp password |
| gotrue.smtp.port | string | `"587"` | smtp port |
| gotrue.smtp.senderName | string | `""` | name of user to send from |
| gotrue.smtp.user | string | `""` | smtp user |
| gotrue.uriAllowList | string | `"*"` | uri allow list e.g. ["http://localhost:3000"] |
| gotrue.webhook | object | `{"events":"validate,signup,login","retries":"5","secret":"test_secret","timeoutSec":"3","url":"http://register-lambda:3000/"}` | https://github.com/supabase/gotrue/blob/425487325b3e1d7be4661e9f292232205a9a3ce0/example.env#L216 |
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
| service | object | `{"port":80,"targetPort":8080,"type":"ClusterIP"}` | service for gotrue |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)

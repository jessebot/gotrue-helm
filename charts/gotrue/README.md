# gotrue

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.125.1](https://img.shields.io/badge/AppVersion-v2.125.1-informational?style=flat-square)

A Helm chart for deploying supabase's gotrue on Kubernetes

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
| gotrue.database.connectionUrl | string | `""` | database connection url, example: postgres://supabase_auth_admin:root@postgres:5432/postgres |
| gotrue.database.driver | string | `"postgres"` | which database backend to use for gotrue |
| gotrue.existingSecret | string | `""` | use an existing secret for gotrue env vars |
| gotrue.external.discord.clientID | string | `""` | client id |
| gotrue.external.discord.enabled | bool | `false` | enable discord as your external auth provider |
| gotrue.external.discord.redirectUri | string | `""` | redirect URI |
| gotrue.external.discord.secret | string | `""` | client secret |
| gotrue.external.github.clientID | string | `""` | client id |
| gotrue.external.github.enabled | bool | `false` | enable github as your external auth provider |
| gotrue.external.github.redirectUri | string | `""` | redirect URI |
| gotrue.external.github.secret | string | `""` | client secret |
| gotrue.external.google.clientID | string | `""` | client id |
| gotrue.external.google.enabled | bool | `false` | enable google as your external auth provider |
| gotrue.external.google.redirectUri | string | `""` | redirect URI |
| gotrue.external.google.secret | string | `""` | client secret |
| gotrue.external.saml.apiBase | string | `"http://localhost:9999"` |  |
| gotrue.external.saml.enabled | bool | `false` | enable a saml provider for your external auth provider |
| gotrue.external.saml.metadataUrl | string | `""` | metadata URL for saml |
| gotrue.external.saml.name | string | `"auth0"` |  |
| gotrue.external.saml.signingCert | string | `""` |  |
| gotrue.external.saml.signingKey | string | `""` |  |
| gotrue.externalUrl | string | `""` | gotrue api external URL |
| gotrue.jwtSecret | string | `""` | set the JWT secret for gotrue |
| gotrue.mailer.autoConfirm | bool | `false` |  |
| gotrue.mailer.urlPaths.confirmation | string | `"/gotrue/verify"` |  |
| gotrue.mailer.urlPaths.emailChange | string | `"/gotrue/verify"` |  |
| gotrue.mailer.urlPaths.invite | string | `"/gotrue/verify"` |  |
| gotrue.mailer.urlPaths.recovery | string | `"/gotrue/verify"` |  |
| gotrue.metrics.enabled | bool | `true` |  |
| gotrue.metrics.exporter | string | `"prometheus"` |  |
| gotrue.port | string | `"9999"` | port to use for gotrue |
| gotrue.siteUrl | string | `""` | siteUrl to use for gotrue, example... "appflow-flutter://" |
| gotrue.smtp.adminEmail | string | `""` |  |
| gotrue.smtp.adminPassword | string | `""` |  |
| gotrue.smtp.host | string | `""` |  |
| gotrue.smtp.maxFrequency | string | `"1ns"` |  |
| gotrue.smtp.password | string | `""` |  |
| gotrue.smtp.port | string | `""` |  |
| gotrue.smtp.user | string | `""` |  |
| gotrue.uriAllowList | string | `"*"` | uri allow list |
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

{{/*
Expand the name of the chart.
*/}}
{{- define "gotrue.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gotrue.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "gotrue.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "gotrue.labels" -}}
helm.sh/chart: {{ include "gotrue.chart" . }}
{{ include "gotrue.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "gotrue.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gotrue.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "gotrue.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "gotrue.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the gotrue secret to use
*/}}
{{- define "gotrue.secret" -}}
{{- if .Values.gotrue.existingSecret }}
{{- .Values.gotrue.existingSecret }}
{{- else }}
{{- print "gotrue-secret" }}
{{- end }}
{{- end }}

{{/*
Create the name of the gotrue secret to use
*/}}
{{- define "gotrue.externalSecret" -}}
{{- if .Values.gotrue.external.existingSecret }}
{{- .Values.gotrue.external.existingSecret }}
{{- else }}
{{- print "gotrue-external-auth-secret" }}
{{- end }}
{{- end }}

{{/* Create the name of the gotrue database secret to use */}}
{{- define "gotrue.databaseSecret" -}}
{{- if .Values.gotrue.database.existingSecret }}
{{- .Values.gotrue.database.existingSecret }}
{{- else }}
{{- print "gotrue-database-secret" }}
{{- end }}
{{- end }}

{{/* Create the name of the gotrue jwt secret to use */}}
{{- define "gotrue.jwtSecret" -}}
{{- if .Values.gotrue.jwt.existingSecret }}
{{- .Values.gotrue.jwt.existingSecret }}
{{- else }}
{{- print "gotrue-jwt-secret" }}
{{- end }}
{{- end }}

{{/* Create the name of the gotrue smtp secret to use */}}
{{- define "gotrue.smtpSecret" -}}
{{- if .Values.gotrue.smtp.existingSecret }}
{{- .Values.gotrue.smtp.existingSecret }}
{{- else }}
{{- print "gotrue-smtp-secret" }}
{{- end }}
{{- end }}

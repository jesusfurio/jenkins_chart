{{- define "jenkins.labels" }}
project: "{{ .Release.Name }}"
app: "{{ .Release.Name }}-jenkins"
component: "jenkins-master"
version: "{{ .Values.environment.jenkinsVersion }}"
{{- end}}

{{- define "jenkins.matchlabels" }}
project: "{{ .Release.Name }}"
app: "{{ .Release.Name }}-jenkins"
component: "jenkins-master"
version: "{{ .Values.environment.jenkinsVersion }}"
{{- end}}

{{- define "jenkins.selector" }}
app: "{{ .Release.Name }}-jenkins"
{{- end}}

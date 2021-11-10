# Helm chart for Jenkins server
Helm chart to deploy Jenkins server with NFS storage.

# Introduction

This [Helm](https://github.com/kubernetes/helm) chart installs [Jenkins](https://www.jenkins.io/) in a Kubernetes cluster.

## Prerequisites

- Kubernetes cluster 1.18+
- Helm 3

## Installation

```bash
helm install my-release .
```

## Uninstallation

```bash
helm uninstall my-release
```

## Configuration

The following table lists the configurable parameters of the Jenkins chart and the default values.

| Parameter                                                                   | Description                                                                                                                                                                                                                                                                                                                                     | Default                         |
| --------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------- |
| `namespace` | The namespace where the chart will be deployed. |  | 
| `domain` | Domain name for the Jenkins container. |  | 
| `replicaCount` | Number of replicas. | `1` | 
| **Environment** |
| `environment.jenkinsName` | Value to JENKINS_NAME environment variable. |  | 
| `environment.jenkinsOpt` | Value to JENKINS_OPT environment variable. |  | 
| `environment.jenkinsVersion` | Jenkins version based on Docker Hub images. |  | 
| **Limits** |
| `limits.cpu` | CPU Limits. | `0.5` | 
| `limits.memory` | Memory limits. | `2Gi` | 
| **Requests** |
| `requests.cpu` | CPU requests. | `0.15` | 
| `requests.memory` | Memory requests. | `1Gi` | 
| **Storage** |
| `storage.storageClassName` | Kubernetes storage class name. |  | 
| `storage.fileServer` | NFS Domain name. |  | 
| `storage.nfsPath` | Path used in NFS server for Jenkins container storage. |  | 
| `storage.capacityStorage` | Máximum storage capacity. |  | 
| `storage.requestStorage` | Request stogare capacity. |  |                                                            
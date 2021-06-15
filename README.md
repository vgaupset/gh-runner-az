# gh-runner-az
Container image to be used with Github Actions. 

[![Dockerhub](https://img.shields.io/docker/pulls/vgaupset/gh-runner-az.svg)](https://hub.docker.com/r/vgaupset/gh-runner-az)

**Installed pwsh Modules:**
- Az
- Azure-cli
- AzCopy

**Environment variables**
```
RUNNER_TOKEN=<<Your-Token>>
RUNNER_NAME=<<Runner-name>>
SHORT_URL=https://github.com/<your org or username>/<Repository name>
RUNNER_GROUP=<Runner group name>[Optional]
```

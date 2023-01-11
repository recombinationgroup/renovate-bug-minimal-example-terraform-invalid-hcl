# Minimum working example of an issue with the terraform manager of renovatebot

## The issue

When running renovatebot (version 34.95.0 or above) against the files in this repository, it exits with error:
```
 INFO: Repository finished (repository=[REDACTED])
       "cloned": true,
       "durationMs": 6278
DEBUG: Renovate exiting
 INFO: Renovate is exiting with a non-zero code due to the following logged errors
       "loggerErrors": [
         {
           "name": "renovate",
           "level": 50,
           "logContext": "9yd_3MIBA0dOpju05hlWR",
           "repository": "[REDACTED]",
           "err": {
             "message": "Cannot read properties of null (reading 'provider')",
             "stack": "TypeError: Cannot read properties of null (reading 'provider')\n    at ProvidersExtractor.extract (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/modules/manager/terraform/extractors/others/providers.ts:12:35)\n    at Object.extractPackageFile (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/modules/manager/terraform/extract.ts:44:28)\n    at getManagerPackageFiles (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/repository/extract/manager-files.ts:52:19)\n    at /opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/repository/extract/index.ts:47:28\n    at async Promise.all (index 0)\n    at extractAllDependencies (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/repository/extract/index.ts:45:26)\n    at extract (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/repository/process/extract-update.ts:117:20)\n    at extractDependencies (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/repository/process/index.ts:120:26)\n    at Object.renovateRepository (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/repository/index.ts:49:52)\n    at attributes.repository (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/global/index.ts:181:11)\n    at start (/opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/workers/global/index.ts:166:7)\n    at /opt/buildpack/tools/renovate/34.97.6/node_modules/renovate/lib/renovate.ts:18:22"
           },
           "msg": "Repository has unknown error"
         }
       ]
```
It should not exit with error, but either
- ignore the broken file
- ignore the repository
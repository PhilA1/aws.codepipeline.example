# CodePipeline

![Pipeline Overview](../docs/Pipeline.png)
1. Developer merges PR into github "main" branch.
2. Commit auto triggers CodePipeline execution.
3. CodeBuild outputs artifacts into S3.
4. CodePipeline auto deploys cloudformation stack into ACCOUNT1 Account.
5. Developer reviews changes then approves deployment to ACCOUNT2 account.

If you need to make changes, amend the pipeline.json file and use the command:
```
aws codepipeline update-pipeline --cli-input-json file://pipeline.json
```

# CodePipeline

## Example
Just a quick example of how to use AWS codepipeline/codebuild CI/CD setup for a dockerised application.

## Setup
This setup uses a multi stage dockerfile and a buildspec.yaml in the root folder.

## Configuration
The IAM policies for the service and build roles can be auto generated but the codebuild policy needs amendments to allow a connection to the ECR.

codepipeline service role: https://github.com/PhilA1/aws.codepipeline.example/blob/main/docs/codepipeline_servicerole_policy.json

codebuild service role: https://github.com/PhilA1/aws.codepipeline.example/blob/main/docs/codebuild_servicerole_policy.json

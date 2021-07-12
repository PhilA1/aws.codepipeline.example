# CodePipeline

## Example
Just a quick example of how to use a codepipeline/codebuild CI/CD setup for a docker app.

## Setup
This setup uses a multi stage dockerfile and a buildspec.yaml in the root.

## Configuration
The IAM policies for the service and build roles can be auto generated but the codebuild policy needs amendments to allow a connection to the ECR.
codepipeline service role:
codebuild service role:

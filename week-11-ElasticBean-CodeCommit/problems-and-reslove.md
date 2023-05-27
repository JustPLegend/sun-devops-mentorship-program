### One of the problems in workshop CF creatin of master-environment

### Creating an AWS Elastic Beanstalk Master EnvironmentHeader anchor link
**Error 1**

User need to change: SolutionStackName in the yaml file under the name "envcreate.yaml", version of node js 18, and 64 bit Linux v2 5.8.1 instead of version by default from download file. 

![error-cf-master-environment-elasticbean](img/error-because-of-version-of-node.png)

**Erorr 2**

User need to add role 'aws-elasticbeanstalk-ec2-role', so EC2 can call EB services. 

![error2-elasticbean-environment](img/error2-elasticbean-environment.png)


Fixed

![role-1](img/rol1-test.png)

EC2

![ec2-add](img/role1-ec2-aws-test.png)

Add just role, next on permissions and complete..

![role-ec2-for-elasticbean](img/roles-ec2-elasticbean.png)

Output-Create-complete

![fixed-error2-complete-stacks](img/output-after-fixed-erro2.png)

----------------

### AWS CodePipeline

**PHASE: Source** 

Error with pipeline, because user didn't use default name of repo in workshop.

![error-repo-name-changed](img/error-gitflow-workshop-changed%20name%20of%20repo.png)

Fixed-> change the name of repository name in the file 'parameters.json'

## Important: DON'T DELETE ONLY PIPELINE MANUALLY! 



**CONSOLE->CLOUDFORMATION->STACKS->'aws-eb---'  and 'gitflow-eb-master' -> DELETE** 

Wait CloudFormation to delete all resources and templates (you can check that there is no more codepipeline under the name 'gitflow-pipeline' in Pipeline(left side)), go to CLI and run again command: 

    aws cloudformation create-stack --template-body file://envcreate.yaml --parameters file://parameters.json --capabilities CAPABILITY_IAM --stack-name gitflow-eb-master

Because user need it to change repo name, but in file 'parameters.json' . From file parameters.json, template envcreate take the parameters for environment. 

Note: Change the name of repository name in file parameters-dev.json (maybe it will need it in the last phase of pipeline)

![error3-changed-repo-name](img/error3-fixed-changed-name-of-repo.png)



**PHASE: BUILD**

## IMPORTANT! PUSH ALL CHANGED FILES ON CODE COMMIT REPO gitworkflow-workshop-sun!

![error4-build-phase](img/error4-build-phase.png)

Open file: buildspec.yml and change the version of nodejs: 
Open file: envcreate.yml and change version of AMI 

- from 16 to 18 (not worked)
- from 18 to 14.  (WORKS)

![error4-version-of-node-build-phase](img/error4-changed-version-to14-runtime.png)

64bit AMI LINUX 2 v5.8.1

![linux-ami-version-file](img/error4-nodejs14-solutionstackname.png)


AGAIN: Delete or Update  CloudFormation stacks:

**Don't forget locally made changes on templates.** 

Stack name
- awseb-e-8cmgu35sbb-stack
- gitflow-eb-master

Repeat steps from: [Elastic Beanstalk App](https://catalog.us-east-1.prod.workshops.aws/workshops/484a7839-1887-43e8-a541-a8c014cd5b18/en-US/cfn/master/beanstalk-application)  to push on Code Commit changed files in files. 

FIXED

![fixed-error4-changed-pushon-codecommit](img/error4-fixed-pushon-codecommit-changes.png)
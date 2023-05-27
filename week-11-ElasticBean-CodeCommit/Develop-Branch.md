## Create Develop Branch

When using the git-flow extension library, executing git flow init on an existing repo will create the develop branch:

1. Initialize gitflow

Install git-flow locally

![install-git-flow](img/install-git-flow-localy.png)

Intialize git-flow

![git-flow-intialize](img/install-git-flow-localy.png)


2. List the current branches. The current branch will be highlighted in green and marked with an asterisk.

        $ git branch

![list-branches](img/current-branches.png)

3. Push commits made on a local branch to a remote repository.

        $git push -u origin develop

User need to be on the branch develop to push changes on develop branch. 

![push-on-develop](img/push-origin-develop.png)


## Create Development Environment

After pushing the commits to development branch, the lambda function you created earlier will automatically detect a new develop branch created and codecommit will trigger the function to create the development environment and code pipeline.

Before this, it was error: 

![git-flow-workshop-develop](img/error6-gitflow-workshop-develop.png)

a) Used command to list available solution stacks: 

        aws elasticbeanstalk list-available-solution-stacks

    Result: 

![list-available-stack](img/list-available-stack.png)

After trying to change version od Node.js on 16 editing encreate.yml and push it on master branch on CCommit it was not possible to create gitflow-workshop-develop branch. Instead of this, it's used manually step, using command: 

    aws cloudformation create-stack --template-body file://envcreate.yaml --parameters file://parameters-dev.json --capabilities CAPABILITY_IAM --stack-name gitflow-workshop-develop

 
Results: 

![git-flow-fixed-error6](img/git-flow-develop-fixed-error6.png)


This file consist of Git branching and also how to initiate the pull request
Understanding the branches
In production, any task to do in GitHub should not be done directly in the main git branch
There should be a separate branch created and only then the corrections to code or any file should be done, it should be merged to the main branch.
1.	Create a new git branch in git hub (feature/git-worklow)
2.	Once branch is created, change the branch in Linux to the newly created branch by using git checkout feature/git-workflow
3.	Then you can see all the same content of main branch
4.	Do some modification to any file and then use that commands to do git add .   , git commit -m “adding modified files”
5.	Git push
Now the newly modified file is only in new branch created not in main branch, to get this to main branch, that is when we use pull request
Use pull request in the github website  
new pull request  ->   base (main)  <-  compare(newbranch)
check for the changes and then approve pull request, modify this is main branch now


# Terraform Modules Template

Bootstraps a new Terraform module repo.

## Installation

### for Anyone

- fork this repo
- replace README.md file with our own
- start coding

### for Me

- clone repo to a new local and set upstream (as I cannot just fork my own repo in Github :/)
  ```shell
    # replace with your repo name
    NEW_REPO_NAME=REPLACE_WITH_YOUR_REPO_NAME_WITHOUT_GIT_EXTENSION && \
    git clone git@github.com:demmonico/terraform-modules-template.git $NEW_REPO_NAME && \
    cd $NEW_REPO_NAME && \
    git remote set-url origin git@github.com:demmonico/$NEW_REPO_NAME.git && \
    git remote add upstream git@github.com:demmonico/terraform-modules-template.git && \
    git push -u origin master && git push --all
    
    # so later you can sync with the original repo
    git fetch upstream && \
    git merge upstream/master
  ```
  More details [here](https://stackoverflow.com/a/10966784/8148333)
- replace README.md file with our own
- start coding


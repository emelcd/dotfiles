
echo "HOLA" # GET THE NAME OF THE GIT
gitName=$(git config user.name)
# GET THE DESCRIPTION OF THE REPO
repoURL=$(git config --get remote.origin.url)
# GET THE NAME OF THE REPO
repoName=$(basename "$repoURL" .git)
# GET THE NAME OF THE BRANCH
branchName=$(git branch | grep \* | cut -d ' ' -f2)
# print all
# folder structure
# where are a top level git
# git rev-parse --show-toplevel == PWD
isTopLevel=$(git rev-parse --show-toplevel)
PWD=$(pwd)
if [ "$isTopLevel" == "$PWD" ]; then
  echo "Top level git"
else
  echo "Not top level git"
  exit 1
fi
#!/bin/sh

####
## This commits all of the new fortunes they added
##


## get new repo
echo "cloning into repo..."
rm -rf "robobibb-steve-bot"
git clone "git+ssh://git@github.com/dvtate/steve.git"
cd "steve"

# make changes
printf "updating fortunes.txt... "
touch "assets/fortunes.txt" 
echo "done"

# commit changes
git add "assets/fortunes.txt"
git commit -m "$1"
git push

# cleanup
cd ".."
rm -rf "robobibb-steve-bot"

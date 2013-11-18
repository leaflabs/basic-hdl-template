#!/bin/bash -e

# From http://stackoverflow.com/questions/1964470/whats-the-equivalent-of-use-commit-times-for-git
# Modified to only run on files passed on command line

OS=${OS:-`uname`}

get_file_rev() {
    git rev-list -n 1 HEAD "$1"
}    

if [ "$OS" = 'FreeBSD' ]
then
    update_file_timestamp() {
        file_time=`date -r "$(git show --pretty=format:%at --abbrev-commit "$(get_file_rev "$1")" | head -n 1)" '+%Y%m%d%H%M.%S'`
        touch -h -t "$file_time" "$1"
    }    
else    
    update_file_timestamp() {
        file_time=`git show --pretty=format:%ai --abbrev-commit "$(get_file_rev "$1")" | head -n 1`
        touch -d "$file_time" "$1"
    }    
fi    

OLD_IFS=$IFS
IFS=$'\n'

for file in $@
do
    if [ ! `git status --ignored --porcelain $file` ]
    then
        update_file_timestamp "$file"
    fi
done

IFS=$OLD_IFS

git update-index --refresh &> /dev/null || true

exit 0

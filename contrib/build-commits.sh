#!/bin/bash


echo "Usage: $0 first-commit last-commit  (e.g. $0 97de5 HEAD)"

for commit in $(  git log --oneline $1..$2 | awk '{print $1;}' ); do
    echo Building Commit: $commit

    echo Creating directory build-$commit
    rm -r build-$commit
    mkdir build-$commit

    echo cleaning...
    make clean >> ./build-$commit/out.log

    echo checking out $commit
    git checkout $commit  >> ./build-$commit/out.log

    echo cleaning...
    make clean >> ./build-$commit/out.log

    echo building... tail ./build-$commit/out.log to observe
    make >> ./build-$commit/out.log

    echo copying result to ./build-$commit
    cp -r build ./build-$commit
    
    echo Finished building $commit
done

echo "Done!"
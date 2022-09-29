#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "No commit message"
    exit
fi

npm run build

touch docs/.nojekyll
echo 'coinstacker.app' > docs/CNAME

git add .
git commit -m "$1"
git push

echo 'Build done'
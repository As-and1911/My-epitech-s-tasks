#!/bin/bash
commit_message=$1
if[-z "$commit_message"] ; then
    echo " Erreur: Saisissez un message de commit"
    exit 1

fi
git add .
if git diff--cached--quiet ; then
    echo "Rien a commiter"
else
    git commit -m "$commit_message"
fi
git push 

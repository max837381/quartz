---
---

## Initialize local repository

````bash
cd directory
git init
# .gitignore step should be done before the next line if desired
git add .
git commit -m "Adding existing files to project"
````

#### Setup .gitignore (before add . step above)

You may want to set up some files that you do not want added to git

````bash
touch .gitignore
vim .gitignore
````

## SSH usage

````bash
git remote set-url origin git@github.com:USERNAME/repository.git

git push -u -f origin main
````

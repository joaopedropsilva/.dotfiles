#! /usr/bin/bash

ZET=~/zet

echo "Backing up zet..."

cd $ZET 

git add -A
git commit -m "Automatic backup commit $(date '+%Y-%m-%d %H:%M:%S')"
git push

echo "Backup complete!"

cd - > /dev/null


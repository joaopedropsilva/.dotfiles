#! /usr/bin/bash

echo 'Enter topic name: '
read topic_name

file_name="$topic_name.md"
file_content="# $topic_name\\n\\n## Concepts\\n## Details\\n"

echo -e "$file_content" > "$HOME/journal/repertory/$file_name"


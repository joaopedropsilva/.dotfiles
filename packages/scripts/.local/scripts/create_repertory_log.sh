#! /usr/bin/bash

echo 'Enter topic name: '
read topic_name

file_name="$topic_name.md"
file_content="# $topic_name\\n\\n## [Concept]\\n\\t### [Detail]\\n"

echo -e "$file_content" > "$HOME/journal/repertory/$file_name"


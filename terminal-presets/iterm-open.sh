#!/bin/sh

file=$1
lineno=$2

in_rails_project=$(echo $file | grep -e "-rails")
ruby_file=$(basename $file | grep "\.rb$")

if [ $in_rails_project ] || [ $ruby_file ]; then
  echo rubymine $file
else
  params=()

  if [ $lineno ]; then
    params+=(+$lineno)
  fi

  echo nvim $file "${params[@]}"
fi


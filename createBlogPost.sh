#!/bin/bash

# Script for generate a new blogPost with the current date
cd _posts
time=$(date +"%Y-%m-%d")
echo "Post title?"
read postTitle
echo "Post categories? (separated by spaces)"
read categories

formattedTitle=`echo $postTitle | xargs | sed 's/ /-/g'` 

touch "${time}-${formattedTitle}.md"

echo "---
layout: post
title:  \"$postTitle\"
date:  $(date +"%Y-%m-%d %T %z") 
categories: $categories
---
" >> "${time}-${formattedTitle}.md"

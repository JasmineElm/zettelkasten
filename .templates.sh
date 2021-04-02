#!/usr/bin/env bash

## templates for creating new zettelkasten cards...

## nice date string for YAML
DATE_STR=$(date)

meta() {
  cat << HEREDOC
---
title: $TITLE
date: $DATE_STR
aliases: 
tags: $TAGS
---
HEREDOC
}


## YESTERDAY and TOMORROW for the journal template
YESTERDAY=$(date --date="yesterday" +%y-%m-%d)
TOMORROW=$(date --date="tomorrow" +%y-%m-%d)


journal_template() {
  cat << HEREDOC

## $TITLE

### What Happened



### What Went Well



### What Didn't Go Well

![Daily]($JRNL_TTL.daily.md#Tasks)

![Morning Pages]($JRNL_TTL.mp.md#Morning%20Notes)

[Yesterday]($YESTERDAY.md) <-- --> [Tomorrow]($TOMORROW.md)
HEREDOC
}


daily_template() {
  cat << HEREDOC

# $TITLE

![Active Goals](../../../Active%20Goals.md#This%20Week)

## Tasks

HEREDOC
}

new_template() {
  cat << HEREDOC
  
  # $TITLE

HEREDOC
}

work_template() {
  cat << HEREDOC
  
  # $TITLE

HEREDOC
}

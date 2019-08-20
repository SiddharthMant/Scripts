#!/bin/bash

# title: copy_without_linebreaks
# author: Glutanimate (github.com/glutanimate)
# modifier: Siddharth (github.com/SidMan2001)
# license: MIT license

# Parses currently selected text and removes 
# newlines

while ./clipnotify;
do
  SelectedText="$(xsel)"
  CopiedText="$(xsel -b)"
  ModifiedTextPrimary="$(echo "$SelectedText" | tr -s '\n' ' ')"
  ModifiedTextClipboard="$(echo "$CopiedText" | tr -s '\n' ' '  )"
  echo -n "$ModifiedTextPrimary" | xsel -i
  echo -n "$ModifiedTextClipboard" | xsel -bi
done

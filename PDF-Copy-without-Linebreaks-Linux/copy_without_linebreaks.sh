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
  if [[ $SelectedText != *"file:///"* ]]; then
    ModifiedTextPrimary="$(echo "$SelectedText" | tr -s '\n' ' ')"
    echo -n "$ModifiedTextPrimary" | xsel -i
  fi
  if [[ $CopiedText != *"file:///"* ]]; then
    ModifiedTextClipboard="$(echo "$CopiedText" | tr -s '\n' ' '  )"
    echo -n "$ModifiedTextClipboard" | xsel -bi
  fi
done

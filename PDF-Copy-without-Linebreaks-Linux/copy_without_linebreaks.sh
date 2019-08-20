#!/bin/bash

# title: copy_without_linebreaks
# author: Glutanimate (github.com/glutanimate)
# modifier: Siddharth (github.com/SidMan2001)
# license: MIT license

# Parses currently selected text and removes 
# newlines that aren't preceded by a full stop

while ./clipnotify;
do
  SelectedText="$(xsel)"
  CopiedText="$(xsel -b)"
  ModifiedTextPrimary="$(echo "$SelectedText" | tr -s '\n' ' ')"
  ModifiedTextClipboard="$(echo "$CopiedText" | tr -s '\n' ' '  )"
#   - first sed command: replace end-of-line full stops with '|' delimiter and keep original periods.
#   - second sed command: replace empty lines with same delimiter (e.g.
#     to separate text headings from text)
#   - subsequent tr commands: remove existing newlines; replace delimiter with
#     newlines
# This is less than elegant but it works.
  echo -n "$ModifiedTextPrimary" | xsel -i
  echo -n "$ModifiedTextClipboard" | xsel -bi
done

# Shell Script Bug: Handling Filenames with Spaces

This repository demonstrates a common bug in shell scripts when dealing with filenames containing spaces.  The script uses the `find` command to locate files, but it fails to correctly handle filenames with spaces because it uses word splitting instead of array processing.

## Bug Description
The script uses command substitution to capture the output of `find` into a variable. This output is then word-split, which causes filenames with spaces to be incorrectly parsed. 

## Solution
The solution is to use an array to store filenames, or to use `find -print0` and `xargs -0` to avoid word splitting problems.
## use less command to read a file

# exit less command when reach the end of the file
less -e owen.txt

# force to open a file (say binary file)
less -f owen.txt

# only show one result when searching
less -g owen.txt

# ignore case when searching the file
less -i owen.txt

# show the line number
less -N owen.txt

## command in less command
# search forward
/owen

# search backward
?owen

# hit next match after searching
n

# hit one match forward
N

# next page
 (space)

# a page forward
b

# show help
h

# mark with tag a
ma

# go to tag a
'a
## basic use of Linux command "find"

# find file in current path with name "storm"
find . -name storm

# find file with access authority
find . -perm 755

# find yuwenyun's file
find . -user yuwenyun

# find file of group owen
find . -group owen

# find file modified 10 days before
find . -mtime +10

# find file within 10 days
find . -mtime -10

# find file created 10 days before
find . -ctime +10

# find file created within 10 days
find . -ctime -10

# find file modified time newer than file a
find . -newer a

# find file modified time not older than file b
find . -newer ! b

# find file if its type is 
# b: block
# d: directory
# c: char
# p: pipe
# l: link
# f: file
find . -type d

# find file if its size larger than 10k
find . -size 10k

# find file with name "sto*" and if it's link, execute find in the dir
# the link points to(follow)
find . -name sto* -follow



# find file with type f whose name start with sto or zoo
find . -type f -name sto* -o -name zoo*
# find file whose name start with sto or whose name start with zoo and type is f
find . -name sto* -o -name zoo* -type f

# find file modified within 20 mins
find . -mmin -20

# find all the empty file (size 0)
find . -empty

# find file in current folder, don't execute recursively
find . -name storm -maxdepth 1

# find file in current folder and don't find in folder example
find . -path ./example -prune -o -name storm -print
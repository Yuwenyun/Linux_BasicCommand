## grep is used to search text

# print the number of times that "groupId" matched
grep -c groupId owen.txt

# ignore letter's case, print the matched lines
grep -i groupId owen.txt

# print the matched lines with line number
grep -n groupId owen.txt

# search for lines that has no "groupId"
grep -v groupId owen.txt

# search all the files in current dir
grep -v groupId *

# search all the files in current dir recursively
grep -r groupId *

# search all the files and print the name of the matched files
grep -l groupId *

# show the matched line and its following 3 lines
grep -A 3 groupId owen.txt

# show the matched line and 3 lines before it
grep -B 3 groupId owen.txt

# match "groupId" or "artifactId"
grep -e groupId -e artifactId pom.xml

# match only 3 times
grep -m 3 groupId pom.xml
# Unpack-Bash.
Exercise 0.1: Manipulating files and folders
Write a bash script called unpack which can unpack multiple packed files (a.k.a “archives”),
and even traverse folders recursively and unpack all archives in them - regardless of the
specific algorithm that was used when packing them. Following is the exact synopsis:
unpack [-r] [-v] file [file...]
Given a list of filenames as input, this script queries each target file (parsing the output of the
file command) for the type of compression used on it. Then the script automatically invokes
the appropriate decompression command, putting files in the same folder. If files with the
same name already exist, they are overwritten.
Unpack should support 4 unpacking options - gunzip, bunzip2, unzip, uncompress.
Adding more options should be VERY simple.
Note that file names and extensions have no meaning - the only way to know what method
to use is through the file command!
If a target file is not compressed, the script takes no other action on that particular file.
If the target is a directory then it decompresses all files in it using same method.
Command echos number of archives decompressed
Command returns number of files it did NOT decompress

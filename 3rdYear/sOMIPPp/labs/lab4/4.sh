sudo grep -h -r -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" /etc   > emails.lst
sed -i 's/$/,/' emails.lst
cat emails.lst


# The metacharacter \b is an anchor like the caret and the dollar sign. It matches at a position that is called a "word boundary". This match is zero-length.

# There are three different positions that qualify as word boundaries:

#     Before the first character in the string, if the first character is a word character.
#     After the last character in the string, if the last character is a word character.
#     Between two characters in the string, where one is a word character and the other is not a word character.

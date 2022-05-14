# Read from the file file.txt and output the tenth line to stdout.

# -n : 只顯示對應行數，若沒有會輸出全部。
# '10p' p = print current pattern space
# number Match only the specified line number

cat file.txt | sed -n '10p' 
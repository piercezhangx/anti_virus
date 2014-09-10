#!/bin/bash

dirs="/etc/ /tmp/ /init/"

file1=sfewfesfs
file2=gfhjrtfyhuf
file3=rewgtf3er4t
file4=fdsfsfvff
file5=smarvtd
file6=whitptabil
file7=gdmorpen
file8=.SSH*
file9=.sshd*
file10=.sshh*

files="${file1} ${file2} ${file3} ${file4} ${file5} ${file6} ${file7} ${file8} ${file9} ${file10}"

echo "Begin scan sfewfesfs virus"
i=0
for dir in $dirs; do
    for file in $files; do
        for f in `ls -a ${dir}${file} 2>/dev/null`; do
            if [ -a $f ];
            then
                chattr -i $f
                echo "virus file $f exist, will be remove!"
                rm -rf $f
                i=$[$i+1]
            fi
        done;
    done;
done;

if [ $i -gt 0 ];
then
    echo "Delete $i virus files. You need reboot your server now!"
else
    echo "Congratulations. You have no virus"
fi

#!/bin/bash
# Create a somewhat randomly named/sized file.
# Example
# Create 200 random files in a directory
# mkdir myDir
# cd myDir
# for i in $(seq 1 200); do /path/to/create_random_file.sh ; done
ext_index=$((1 + $RANDOM % 14))
sub=$((1 + $RANDOM % 12))
case $ext_index in
    0)
        ext=msg
        ;;
    1)
        ext=docx
        ;;
    2)
        ext=pdf
        ;;
    3)
        ext=xls
        ;;
    4)
        ext=xlsx
        ;;
    5)
        ext=ppt
        ;;
    6)
        ext=pptx
        ;;
    7)
        ext=ps
        ;;
    8)
        ext=tmp
        ;;
    9)
        ext=txt
        ;;
    10)
        ext=bak
        ;;
    11)
        ext=zip
        ;;
    12)
        ext=png
        ;;
    13)
        ext=md
        ;;
    *)
        ext=old
        ;;
esac
Name_index=$((1 + $RANDOM % 15))
case $Name_index in
    0)
        name=stock-quote
        ;;
    1)
        name=workbook
        ;;
    2) 
        name=hours
        ;;
    3)
        name=copy-of_$RANDOM
        ;;
    4)
        name=assessment
        ;;
    5)
        name=proposal
        ;;
    6) 
        name=draft$(date --date "$((1 + $RANDOM % 365)) days ago" +%Y%m%d)
        ;;
    7)
        name=copy
        ;;
    8)
        name=sample
        ;;
    9)
        name=training
        ;;
    10)
        name=memo-$(date --date "$((1 + $RANDOM % 365)) days ago" +%Y%m%d)
        ;;
    11)
        name=mynotes$RANDOM
        ;;
    12) 
        name=notes-$(date --date "$((1 + $RANDOM % 365)) days ago" +%Y%m%d)
        ;;
    13)
        name=$(head -c 50 /dev/urandom| md5sum | head -c 10)
        ;;
    14)
        name=metrics
        ;;
    *)
        name=temp$RANDOM
        ;;
esac
junkfile=$(echo $name$sub.$ext)
head -c $RANDOM </dev/urandom > $junkfile

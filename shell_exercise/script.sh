
#number of files expected
#FILE_NUM=5

#line number that will be used for renaming the file
#FILE1_LINE=20
#FILE2_LINE=27
#FILE3_LINE=15
#FILE4_LINE=42

source base.sh 

NUMB_FILES=`find alexia/ -type f | wc -l`
le.txtfcho $NUMB_FILES 
if [ $NUMB_FILES -gt 4 ]; then
    echo "File Number is greater then 4"
    exit 1
fi

ls alexia/example1.info

#IFS=$'\n'       # make newlines the only separator
#set -f          # disable globbing
#for i in $(cat < "$example1"); do
#  echo "tester: $i"
#d


LINE_NUMBER=0
FILE_COUNT=1
LINE_COUNT=1

for file in alexia/*; do
    if [ $FILE_COUNT -eq 1 ]; then
        LINE_NUMBER=$FILE1_LINE
    elif [ $FILE_COUNT -eq 2 ]; then
        LINE_NUMBER=$FILE2_LINE
    elif [ $FILE_COUNT -eq 3 ]; then
        LINE_NUMBER=$FILE3_LINE
    elif [ $FILE_COUNT -eq 4 ]; then
        LINE_NUMBER=$FILE4_LINE

    fi
    IFS=$'\n'
    for line in `cat $file`; do 
        echo $line
        if [ "$LINE_COUNT" -eq "$LINE_NUMBER" ]; then
            mv $file alexia/$line
        fi

        LINE_COUNT=$((LINE_COUNT+1))
    done

    FILE_COUNT=$((FILE_COUNT+1))
    LINE_COUNT=1
done

cat alexia/* >> example5.info
tr -d '\n' < example5.info > example6.info

#foo > example5.info 2> example6.info



#CHECK IF HADOOP FILE EXIST
hadoop fs -test -e /PATH/FILENAME
inDirChk=$?
if [ $inDirChk -ne 0 ]; then
        echo "INFO["`date +%Y-%m-%d:%H:%M:%S`"]: FILE DOESN'T EXIST"
else
        echo "INFO ["`date +%Y-%m-%d:%H:%M:%S`"]: FILE EXIT"
fi

#CHECK IF THE PATH IS DIRECTORY
hadoop fs -test -d /PATH/
inDirChk=$?
if [ $inDirChk -ne 0 ]; then
        echo "INFO["`date +%Y-%m-%d:%H:%M:%S`"]: DIRECTORY DOESN'T EXIST"
else
        echo "INFO ["`date +%Y-%m-%d:%H:%M:%S`"]: DIRECTORY EXIST"
fi


#CHECK IF THE FILE IS EMPTY
hadoop fs -test -z /PATH/FILENAME
inDirChk=$?
if [ $inDirChk -ne 0 ]; then
        echo "INFO["`date +%Y-%m-%d:%H:%M:%S`"]: FILE IS NOT EMPTY"
else
        echo "INFO ["`date +%Y-%m-%d:%H:%M:%S`"]: FILE IS EMPTY"
fi

# CREATE ZERO LENGTH FILE IN HDFS
hadoop fs -touchz /PATH/FILENAME
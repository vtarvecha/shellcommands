# NOHUP Usage: STDOUT and STDERR in one file
nohup ./TEMP.sh &>TEMP.log &

# DATE PATERNS
echo `date +%Y-%m-%d:%H:%M:%S`  		# 2015-04-01:11:35:12
echo $(date +"%x %X")					# 04/01/2015 11:37:05 AM
echo `date +%Y%m%d%H%M%S`  				# 20150401113825
echo $(date --date yesterday "+%Y%m%d") # Yesterday Date-Stamp
echo $(date --date="-1 day")			# Yesterday Date

#CHECK IF HADOOP FILE EXIST
hadoop fs -test -e /PATH/FILENAME
inDirChk=$?
if [ $inDirChk -ne 0 ]; then
        echo "INFO["`date +%Y-%m-%d:%H:%M:%S`"]: FILE DOESN'T EXIST"
else
        echo "INFO ["`date +%Y-%m-%d:%H:%M:%S`"]: FILE EXIT"
fi

# DATE PATERNS
echo `date +%Y-%m-%d:%H:%M:%S`  		# 2015-04-01:11:35:12
echo $(date +"%x %X")					# 04/01/2015 11:37:05 AM
echo `date +%Y%m%d%H%M%S`  				# 20150401113825
echo $(date --date yesterday "+%Y%m%d") # Yesterday Date-Stamp
echo $(date --date="-1 day")			# Yesterday Date
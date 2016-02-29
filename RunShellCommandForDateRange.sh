usage() {
cat <<EOF
  RunShellCommandForDateRange.sh Usage:
    # Simple template to run any command for range of dates
    # Pass 2 parameters.
    # Ex: RunShellCommandForDateRange.sh -f <FROM_DATE> -t <TO_DATE>
    # NOTE : TO_DATE is exclusive, FROM_DATE is inclusive
EOF
}


while getopts "f:t:" OPTION
do
    case $OPTION in
        f) FROM_DATE=$OPTARG;;
        t) TO_DATE=$OPTARG;;
    esac
done

echo ARG 1 : $FROM_DATE
echo ARG 2 : $TO_DATE

d="$FROM_DATE"

while [ "$d" != $TO_DATE ]; do
        echo $d
        d=$(date -I -d "$d + 1 day")
done
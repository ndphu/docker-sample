docker ps | tail -n +2 | awk 'BEGIN { FS = " +" } ; { print $(NF-1) }'


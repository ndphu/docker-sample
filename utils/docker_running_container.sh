docker ps | tail -n +2 | awk 'BEGIN { FS = "[ \t]+" } ; { print $(NF) }'


# Query gpu data

QUERY=$(nvidia-smi --query-gpu=utilization.memory,temperature.gpu --format=csv,noheader,nounits)

# Extract data from query

USAGE=$(echo $QUERY | awk -F, '{print $1}')
TEMP=$(echo $QUERY | awk -F, '{print $2}')

echo "<span foreground='#b7bdf8'>GPU:</span> $USAGE% [$TEMP°C ]"
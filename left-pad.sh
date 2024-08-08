#!/usr/bin/env bash
print_usage() {
  echo "Usage: left-pad <number_of_spaces> 'string_to_pad'"
  exit 0
}
[[ "$1" =~ ^[0-9]+(\.[0-9]+)?$ ]] || print_usage
[ -z "$2" ] && print_usage
padding=""
for ((i=0; i<$1; i++)); do
  padding+=" "
done
echo "$padding$2"

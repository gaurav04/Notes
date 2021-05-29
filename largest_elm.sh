
# !/bin/bash


## $@- All arguments.
## $#- Number of arguments.
## $0- Filename.
## $1, $2, $3, $4 ... - Specific arguments

if [ "$#" = 0 ]
then

    echo "No arguments passed."
    exit 1
fi
  
max=$1
  
for arg in "$@"
do
    if [ "$arg" -gt "$max" ]
    then
        max=$arg
    fi
done
echo "Largest value is: $max"

#!/bin/sh

if [ "$1" = "-h" ]; then
    echo "Usage: $0 [filename]"
    exit
fi


# The user can optionally supply a name for the capture
filename="$1"

if [ "$filename" = "" ]; then
    # Generate a capture name if not supplied
    now=`date +%Y%m%d_%T`
    filename="capture_web_${now}"
else
    # Otherwise just make sure no path/suffix is given
    filename=`basename $filename`
    filename=`echo $filename | sed -e 's/\..*//'`
fi
filename="${filename}.jpg"

# All the captures will go into this directory
#  which is created if it doesn't exist
output_dir="${HOME}/Pictures/RIGOL"
mkdir -p $output_dir

# Capture
output="${output_dir}/$filename"
if [ -e $output ]; then
    echo "File $output already exists. Delete or move it first. Aborting!"
    exit
fi
echo -n "Capturing..."
fswebcam -r 640x480 -D 1 ${output}
display ${output}

echo "done"


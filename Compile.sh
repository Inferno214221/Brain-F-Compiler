#!/usr/bin/sh
#SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cat $1 | sed "s%\.%putchar(*ptr);%g" | sed "s%,%*ptr=getchar();%g"  | sed "s%\[%while(*ptr){%g"  | sed "s%]%}%g"  | sed "s%+%++*ptr;%g"  | sed "s%-%--*ptr;%g" | sed "s%>%++ptr;%g" | sed "s%<%--ptr;%g" | sed "s%b%#include<stdio.h>\nint main(){\nchar array[30000]={0};\nchar *ptr=array;%g" | sed "s%f%putchar('\\\n');\nreturn 0;\n}%g" > "$1.c"
NAME=$(echo $1 | sed "s/.bf//")
gcc "$1.c" -o $NAME
chmod +x ./$NAME
./$NAME

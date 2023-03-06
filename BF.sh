#!/usr/bin/sh
cat $1 | sed "s%\.%putchar(*ptr);%g" | sed "s%,%*ptr=getchar();%g"  | sed "s%\[%while(*ptr){%g"  | sed "s%]%}%g"  | sed "s%+%++*ptr;%g"  | sed "s%-%--*ptr;%g" | sed "s%>%++ptr;%g" | sed "s%<%--ptr;%g" | sed "s%b%#include<stdio.h>\nint main(){\nchar array[30000]={0};\nchar *ptr=array;%g" | sed "s%f%putchar('\\\n');\nreturn 0;\n}%g" > "$1.c"

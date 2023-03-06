#include<stdio.h>

int main () {
    char array[30000] = {0};
    char *ptr = array;

    #define > ++ptr;
    #define < --ptr;
    #define . putchar(*ptr);
    #define , *ptr = getchar();
    #define [ while(*ptr){;
    #define ] };
    #define + ++*ptr;
    #define - --*ptr;

    ++++++++++[->++++++++<]>++++.
    <++++[->+++++<]>.
    ---.
    <+++++[->>++++++<<]>>++.<
    <++++++++++[->---<]>++.
    <++++++[->++++++<]>.
    +++.
    -.
    ++++.
    +.
    <+++++[->---<]>.
    <+++++[->+++<]>--.
    >.<
    <+++[->---<]>.
    <++[->+++++<]>.
    >.<
    .
    ++.
    --.
    <+++++[->>>+++++++++<<<]>>>+.<<

    return 0;
}
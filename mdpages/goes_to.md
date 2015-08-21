The "goes to" (--&gt;) operator
===============================

The "goes to" operator, a.k.a. `-->`, is a very useful operator in C for
repeating a block of directives repeatedly as an arithmetic object
approaches a certain value. Here is a nice example demonstrating its
usefulness.

    #include <stdio.h>

    int main(void)
    {
        int i = 30;
        while (i --> 0) {
            printf("i = %d\n", i);
        }

        return 0;
    }

This can be read "as i goes to 0, ...".

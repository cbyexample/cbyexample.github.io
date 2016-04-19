Reading integer input
=====================

Reading integers from an input stream is something which is very easy to get
wrong. There are a handful of things that can go wrong, and in order to write
C that is resilient against all of them, one must take some care.

The two things which most commonly cause problems:

    - The input does not resemble an integer (e.g., 'abc' when you are expecting a decimal integer).

    - The integer cannot be represented by the type of the object you're trying to store it in.

A common approach is to use `scanf`. There are two flaws in this approach:

    - `scanf` does not check protect against integer overflow

    - `scanf` is not very appropriate when you want control over how whitespace is consumed.

The most most robust way to read and parse integers using the standard library
is to first read the integer in the format you like using functions from `stdio.h`,
such as `getchar`, or `fgets`, and then use one of:

    - `strtol`

    - `strtoll`

    - `strtoul`

    - `strtoull`

    - `strtoimax`

    - `strtoumax`

to parse the the input as an integer. Which of these functions you should use
depends of course on the type that you're using.

Here is a small program demonstrating a reasonable way to read and parse an
integer from `stdin`:

    #include <stdio.h>
    #include <stdlib.h>
    #include <errno.h>

    int main(void)
    {
        char buffer[100];
        
        if (!fgets(buffer, 100, stdin))
            return 1;

        char *end;
        errno = 0;
        long value = strtol(buffer, &end, 10);

        if ((*end && *end != '\n') || end == buffer)
            return 1;

        if (errno)
            return 2;

        return 0;
    }

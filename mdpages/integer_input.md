Reading integer input
=====================

    #include <stdio.h>
    #include <stdlib.h>
    #include <errno.h>

    int main(void)
    {
        /*
         * This is a correct way to read an integer value from an input stream in C.
         */
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

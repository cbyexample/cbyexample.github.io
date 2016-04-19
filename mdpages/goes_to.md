The *goes to* (`-->`) operator
===============================

The *goes to* operator, spelled `-->`, is a useful pseudo-operator in C for
looping while an integer object approaches a certain value. Here is a short
example demonstrating its utility:

    #include <stdio.h>

    int main(void)
    {
        int i = 30;
        while (i --> 0)
            printf("i = %d\n", i);

        return 0;
    }

This can be read "as i goes to 0, ...".


Whether or not *goes to* should be used seriously is controversial.

The two arguments against *goes to* are:

* Because it isn't a *real* operator, it will confuse people who have never encountered it.

* Syntactically, it's difficult to tell whether `i` takes on values 30 to 1, or 29 to 0.

Despite this, I advocate for its use, because:

* It's fun!

* It's pleasant to look at and easy to read once you're used to it.

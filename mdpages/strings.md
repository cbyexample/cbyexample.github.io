Strings
=======

**In C, a *string* is a sequence of characters terminated by
and including a null character (`'\0'`)**.

Here, "sequence" means that the characters in a string
are adjacent in memory.

Here are a few examples of possible strings in C:

```
[a] [b] [c] [d] [\0]

[h] [e] [l] [l] [o] [ ] [w] [o] [r] [l] [d] [\0]

[\0]
```

*String literals* in C, are a convenient way of creating read-only
strings with static storage that you can use in your program.

Here is an example of a *string literal*:

```
"Hello, world!"
```

This string literal corresponds to the following string:

```
[H] [e] [l] [l] [o] [,] [ ] [W] [o] [r] [l] [d] [!] [\0]
```

Here is how you may use string literals in your C programs:

```
char *s = "Foo"; // s points to the beginning of the read-only string [F] [o] [o] [\0]
char buf[] = "Bar"; // buf contains the string [B] [a] [r] [\0]

s[1] = 'B'; // undefined behavior (s points into a read-only string) - bad!
buf[1] = 'F'; // this is fine

puts("Baz");
```

In this example, `char *s = "Foo";` declares `s` as a pointer to `char`, and
initializes it with the address of a the first character
in a read-only string with static storage duration.
`char buf[] = "Bar";` on the other hand creates an array with automatic storage
duration and initializes it with the string `[B] [a] [r] [\0]`. This means that you are
free to modify its contents.

String literals have the type `char[N]`, where `N` is the number of bytes in the string (including the null character).

Note that any non-empty suffix of a string is itself a string, for example:

```
char *s1 = "abcd";
char *s2 = s1 + 1;
char *s3 = s1 + 2;
char *s4 = s1 + 3;
char *s5 = s1 + 4;
char *s6 = s1 + 5;
```
Here, `s1, s2, s3, s4`, and `s5` all point to the beginning of valid strings. `s6`
does not, but it is still a valid pointer.

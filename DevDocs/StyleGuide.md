# Style Guide

This document will outline the code formatting and style conventions that should
be followed within the ParadiseOS codebase. Take care when writing you code, and
do your best to adhere to these rules. The most important rule, however, is:

1. Know when to break the rules.

These conventions are not set in stone. The most important thing is readability,
so if you really think going against this guide is best, do it. Use your
judgement.

## Naming

1. Source files should be named in `snake_case`.
2. Variables and functions should be named in `snake_case`.
3. Constants and macros should be named in `SCREAMING_SNAKE_CASE`.
4. `struct`'s, `enum`'s and `union`'s should be named in `PascalCase`. Only the
   first character of acronyms should be captialized. For example: `GdtEntry`.
3. Always `typedef` your `struct`'s, `enum`'s, and `union`'s.
       ```c
       typedef struct {
           u32 a;
           u16 b;
           char *c;
       } Foo;
       ```
   If your `struct` needs to be self referential, do this:
       ```c
       typedef struct Foo_ Foo;
       
       typedef struct Foo_ {
           u32 a;
           u16 b;
           char *c;
           Foo *foo;
       } Foo;
       ```
5. `enum` variants should be in `PascalCase` but should be prefixed by an enum
   tag to show which enum they belong to. For example:
       ```c
       typedef enum {
           err_OutOfMemory,
           err_OutOfDisk,
           err_FileNotFound,
           err_PermissionDenied,
       } Error;
       ```

Make sure your names are descriptive. Someone vaguely familar with the code base
should be able to somewhat understand what your names are descripting. So don't
use abbreviations unless they are obvious or directly relevant to operating
systems or the x86 architecture. In the latter case, make sure to properly
document your code.

## Indentation

1. Use 4-space indentation.
2. Indent by 1 inside of blocks.
3. Don't indent case labels. For example:
       ```c
       switch (n) {
       case 1:
           printf("one");
           break;
       case 2:
           printf("two");
           break;
       case 3:
           printf("three");
           break;
       }
       ```

## Spacing

1. Put one space around all binary operators.
2. Put a space after the base type in pointers. Do not put a space before the
   variable name. For example:
       ```c
       u32 *ptr;
       ptr = (u32 *) 0x45;
       ```
3. Put a space between a close parenthesis and open brace.
4. For function calls and declarations, do not put a space between the identifer
   and the open parenthesis.
5. For control flow statements, put a space after the keyword.
6. Put a space after commas but not before.
7. In a `for` loop header, put a space after semicolons but not before.

## Misc

1. Don't let your lines get too long. Over 100 characters is really pushing it.
2. For long function calls and headers, split up the line one of these two ways:
       ```c
       long_function_name(long_parameter_name_1, long_parameter_name_2,
                         long_parameter name_3, long_parameter_name_4);
       ```
      
       ```c
       long_function_name(
           long_parameter_name_1, 
           long_parameter_name_2, 
           long_parameter name_3, 
           long_parameter_name_4
       );
       ```
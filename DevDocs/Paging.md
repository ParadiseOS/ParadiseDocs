# Paging

Paging allows us to virtualize our memory, mapping addresses to different memory
locations. This yields many benefits such as easy process separation and virtual
RAM expansion. To fully understand paging requires some familiarity with a few
basic concepts.

## Address Space

An address space refers to some range (or ranges) of memory addresses which are
potentially valid. The two address spaces we are concerned with in regards to
paging is the physical address space and the virtual address space.

The physical address space refers to the ranges of physical memory which are
valid for us to use. Physical memory means real bytes which can actually be
stored on some device. The size of our physical address space corresponds to the
amount of ram available to us. The range of valid addresses is also not
necessarily contiguous.

Here's an example of what that might look like. We have 50 valid addresses and a
few ranges within that are invalid.

```
0x00                 0x16      0x20                        0x3C             0x4F
^                     ^         ^                           ^                  ^
+------------------------------------------------------------------------------+
|        Valid        |*********|           Valid           |******************|
+------------------------------------------------------------------------------+
```

The virtual address space refers to the range of potentially valid virtual
addresses. Since we are working with a 32-bit machine, this is precisely
`0x00000000` to `0xFFFFFFFF`. However, not all of these addresses are
necessarily valid. It depends on which virtual addresses are actually mapped to
something.

Paging allows us to map addresses in the virtual address space to addresses in
the physical address space. This gives our OS and our processes a much larger
and contiguous address space to work with.

## Pages

Memory is not exactly like an array of bytes. Not every subsection of memory is
treated the same by the CPU. There are "pages" of memory: same-sized,
consecutive sections of bytes. Pages are always aligned to an address that is a
multiple of their size. In ParadiseOS, pages are always 4KiB long, so we will
move forward assuming such. Keep in mind, however, that this is not universally
true.

```
N: Page size

0         N         2N        3N        4N        5N        6N
^         ^         ^         ^         ^         ^         ^
+---------------------------------------------------------------------+
| Page #1 | Page #2 | Page #3 | Page #4 | Page #5 | Page #6 | Page #7 |
+---------------------------------------------------------------------+
 <-  N  ->
```

Paging does not allow byte-level mapping between our address spaces. The mapping
occurs on the page-level. We have the ability to map some virtual page to a
physical page. After that, all the addresses within that virtual page will map
to the corresponding address in the physical page.

## How it works

Coming soon ... 

# Paging in ParadiseOS

Coming soon ... 

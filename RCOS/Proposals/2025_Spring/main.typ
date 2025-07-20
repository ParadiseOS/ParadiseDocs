#import "template.typ": *

#show: project.with(
  title: "ParadiseOS",
  authors: (
    "Anthony Fabius",
    "Joyal Mathew",
  ),
  date:  $bold("Spring 2025 - Version 0.1.0")$,
)

= Overview

== Vision

ParadiseOS is an 32-bit, x86, multi-core, general-purpose, micro-kernel operating system. The project focuses on creating a modular, extensible architecture that provides the foundation for further development and testing of key OS concepts. Features in development include process & memory management, inter-process communication, and basic programs for testing the functionality of the OS. The end goal of ParadiseOS is to provide a flexible educational platform where users can design, swap, and implement custom memory and process managers. This would enable them to experiment with different operating system concepts in a modular environment. The idea is to serve as a hands-on-tool for students in OpSys at RPI helping them understand and tinker with core OS functionality in real-time on their own machines.

== Stack

#box(height: 2em, columns(3)[
- C
- x86 Assembly
- Bash
- GNU Make
- QEMU
- Docker
])

= Goals

+ Memory primitives
+ Process primitives
+ A working scheduler
+ A working memory manager

= Timeline

#set enum(numbering: "I.a.")

+ January
  - Research micro-kernel architecture
    - _Operating Systems Design and Implementation (Ed. 3)_ (Tanenbaum & Woodhull)
  - Design a kernel API to write application servers on top of
    - Process management primitives
    - Memory management primitives
  - Interrupt service routines
  - PS/2 Keyboard Handling
    - Characters actually appearing on screen as you type
    
+ February
  - Inter-process communication
    - Pipes
    - Signals
  - Process scheduler 
    - Handle threads/process-tree
  - Memory manager
    - Allocation/de-allocation
    - Permissions
    
+ March
  - Basic programs
    - Shell
    - Calculator
    - Number guessing
  - Testing
    - Kernel Debugging
    - Testing above programs
  
+ April
  - Enable Floating point unit
  - LibC port 
    - Translate system calls to server requests

= Team
Anthony Fabius - Taking RCOS for credit, Coordinator

Joyal Matthew - Taking RCOS for credit, Member
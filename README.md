# 🧮 Assembly Projects

## Summary and Highlights

### Major Project: [Memory Allocator/Deallocator](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/malloc_free.s) (in progress)
* Written in MIPS assembly
* Dynamic memory allocation/deallocation in a self-managed heap
* Dynamic resizing of heap, alloc-list, and free-list
* Free-list and alloc-list management using a linked-list data structure
* Block Splitting, Block Coalescing, Defragmentation - advanced heap management strategies

### Exercises and Mini-Projects
* Brief work in `x86` and `ARMv8` assembly
* Over 40 `MIPS` assembly programs including:
    * [Binary search](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/binary_search.s), [Bubble sort](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/bubble_sort.s), [Insertion sort](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/insertion_sort.s)
    * [Recursive factorial](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/recursive_factorial.s) & [Fibonnaci](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/recursive_fibonacci.s) (stack pointer manipulation)
    * [Sieve of Eratosthenes](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/sieve_of_eratosthenes.s)
    * [Linked List](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/linkedlist.s), [Linked Stack](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/linkedstack.s)
        * Memory management of nodes (addresses stored in static-array for reuse)
* Text editor of choice: ![Vim](https://img.shields.io/badge/-Vim-333333?style=flat&logo=vim)&nbsp;
        * [.vimrc file content](https://github.com/anishsharma21/Assembly-Projects/blob/main/vimrc.txt)

## Introduction

Modern software development is complex and chaotic. Juniors (like myself) are taught serverless deployment of dockerised container SPA applications running in a JIT compiled environment, using a non-blocking, event-loop driven language... before we're even taught the basics of boolean logic. I had no clue how a web server actually worked, where computers came from, why 1's and 0's represent instructions and memory - I knew none of that - not even how my little Python scripts get turned into executable programs. So, I wanted to return to first principles and learn computer science from the ground up, from the lowest layers of abstraction. I wanted to see how things fit into the bigger picture.

Before creating this repo, I spent a couple of months working my way through Digital Logic --> Microarchitecture --> ISA so I could understand the lowest layers of abstraction before eventually landing on assembly programming. While I couldn't easily showcase my progress through those previous abstraction layers, I figured I could write assembly and track my progress with git. Hence this repo :)

My goal with this repo is to explore assembly, work through many exercises, understand why everything boils down to the ISA/assembly, and understand how other languages were built upon fundamental ideas presented in ISA/assembly with concepts like the stack, the heap, procedure calling conventions, registers, etc. To round of the repo, I'd like to complete a major project in pure assembly to consolidate all my learnings and help me segway into the next abstraction layer in my journey.

## Additional Information

Each directory in this repo relates to different programming languages that I explored simultaneously, with README files to help anyone else set up their environment - assuming they're running macOS (I'm running Apple Silicon with macOS Sonoma). If you're on a different OS, steps might vary, and you'll need to do some investigating. You'll find the bulk of programs in the [MIPS_asm](https://github.com/anishsharma21/EarlyLangs/tree/main/MIPS_asm) directory. If you find solutions or mistakes, feel free to open an issue!

As an aside, if you're keen on diving deeper into the "Digital Logic --> Microarchitecture --> ISA" path, I highly recommend *CODE: The Hidden Language of Computer Hardware and Software* by Charles Petzold. It's a fantastic, beginner-friendly book that takes you from lightbulbs and switches to a fully functioning processor. The book is beautifully written and helped demystify how computers actually worked for me - by the time I got to assembly programming, it felt so intuitive to pick up - it was just a natural step along the journey. In fact, if you wanted to, you could follow the book and create your own DIY breadboard computer similar in capability to one of the first commercially available computers to hackers in the 70's - the Altair 8800. Check out my [Memory Map Emulator](https://github.com/anishsharma21/Memory-Map-Emulator) inspired by this book.

## Project Logs

### x86 Assembly

Initially, the project focused on x86 assembly language for the GNU/Linux environment. To facilitate development and ensure a consistent environment, the x86 assembly programs were containerised using Docker. This allowed for easy setup and execution of the programs on any machine with Docker installed... or so I thought. The reality was that unless I was using an emulator like `qemu`, I couldn't write assembly programs targetting x86 architecture (with 32 bit registers) on an ARM64 machine, or at least not as seamlessly as with ARM64 assembly.

### ARM64 Assembly

The project then transitioned to exploring ARM64 assembly language with a RISC (reduced instruction set computing) ISA. Since I am developing on a ARM64 based Mac (M3 chip), I can use the xcode tools and specifically `clang` to both assemble and link my assembly programs, making the process of writing and executing assembly programs much easier. Resources for ARM64 assembly are pretty scarce or quite terse, so its a solid challenge overall - but, I found [this really good video](https://www.youtube.com/watch?v=rg6kU42LQcY) that will get anyone with an M-chip mac up to scratch with ARM64 assembly programming on their mac's.

### MIPS Assembly

While the resources for ARM64 assembly language were better for my set up (MacOS + Apple silicon), there were still lofty barriers in the way of exploring more complex concepts like procedures, heap + stack allocation, or even writing systems software. As a result, I decided to look into MIPS - which stands for Microprocessor without Interlocked Pipeline Stages. Like ARM, its an assembly language that also utilises a RISC architecture. Since it was made for educational purposes, there were plenty of resources to learn from. Additionally, I was working through the book *Computer Organization and Design: The Hardware/Software Interface*, which uses MIPS as its main assembly language to illustrate concepts and programs - so being able to write MIPS on my mac made following along with this book pretty seamless. In particular, I used the `SPIM` simulator (which I installed using `brew install spim`) to run my MIPS programs with a set of `spim` commands.

I ended up having the most fun and gaining the most experience from my time in MIPS - I began by asking AI for 20 beginner, intermediate, and advanced exercises, and completed them in order. This was a super useful tactic to learn the language quickly, cover the basics, and build/apply my knowledge with practical output - highly recommend this approach. I spent a lot of time programming in MIPS and learnt a lot of useful, fundamental programming concepts like **memory allocation**, the **stack**, the **heap**, **recursion**, **loops**, **branching**, **conditional flow**, and applied my new found knowledge in a number of programs like implementing a [linked stack](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/linkedstack.s) data structure with dynamic memory allocation and use of reused nodes.

After having worked through a tonne of exercises and some interesting challenges, I was itching for a big project to round of my work off in MIPS. Given my recent work with dynamic memory allocation in the linked stack program, I decided to build a [Memory Allocator/Deallocator](https://github.com/anishsharma21/EarlyLangs/blob/main/MIPS_asm/malloc_free.s), or in other words, a MIPS assembly implementation of the malloc and free functions in C. This program was HUGE, and I learned a lot about memory management and strategies to write more maintainable and modifiable code. I ran into some huge issues that required massive refactoring - this became possibly the most difficult programming task I've done in my programming journey so far. Refactoring/debugging in assembly involved the following: variables don't have names (they're marked with registers that might need to be stored in the heap or stack and retrieved again later), the state of the program is impossible to follow unless you write down and update changes in values on paper, assembly code you wrote a week ago looks like gibberish, assembly code you wrote a week ago also feels completely inefficient and you want to go in and tidy it up, but then you realise that small changes in one part of the program have huge ripple effects throughout the program (which are compounded further by the difficulty of following state and debugging). You also can't just add a print statement in to check the state of values. I often needed to write in 10 lines of code to store the program's state in temporary registers, print register values I was after, and then return the program to its original state.

At one point in the project, I realised I had made a mistake in my choice of data structure for the memory allocation list and the free list. These lists are basically used to track which blocks of memory are allocated or freed at any given point. I initially used an array structure for each, but 500 lines of code in, I realised that when addresses moved from one list to another (i.e. they go from being allocated to deallocated, or vice versa), a big hole is left in the original array... so using an offset to find the "nth" address in the list was simply unreliable. Since most of my program relied on this array implementation, I had to update my program to use the more appropriate linked-list data structure, with head and tail node pointers for each list, and essentially updating 300 lines of code to return the exact same point. This was all with aformentioned headache of debugging/refactoring you get with assembly in mind. But I have to say, it was super fun, and I learned heaps during the process - I already feel more confident in my technical skills and have a new perspective on programming and software development. Knowing that all programs essentially boil down to moving data around and performing bitwise operations has given me greater confidence in my ability to tackle the problem that comes my way. Most importantly, I feel evermore passionate about my chosen craft and can't wait to further my knowledge and experience with new problems. Now, I still have to implement block splitting, coalescing, and defragmentation before I'm happy with the state of my memory allocator/deallocator - but I look forward to finishing this major project and moving on to the classic computer science language: C!

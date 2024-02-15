# Notes on C

- Storage
    - Stack (type[])
    - Heap (malloc)
    - Allocator (can write to preallocated array - memory arena, and bunch of other stuff)
    - static (constexpr variable only one, lifetime of the program execution)

- Linkage
    - extern (causes external linkage) The name can be referred to from the scopes in the other translation units. Variables and functions with external linkage also have language linkage, which makes it possible to link translation units written in different programming languages.
    - static (causes internal linkage)

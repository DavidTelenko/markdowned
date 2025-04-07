# How editor works

file: `<filename>.<file_extension>`

1. `<file_extension>` - what is it (.lua, .ts, .rs, .cpp, .java)
2. Let `lua`
   - write into `ft=lua`
   - `ft`

## Formatter

Application which formats text.

`unformatted text -> <formatter> -> formatted text`

## LSP (Language Server Protocol)

Application which reads text, and analyses it.

1. Not only one file but the whole project
2. Reads all symbols (functions, variables, scope)
3. Intelligent completion

## Linter (LSP)

Application which gives ability to intelligently find errors in your code

1. Reads whole project
2. Watches for the quality of code

## Treesitter

Syntax highlighting

1. Parses file
2. Creates custom (lisp based) AST (Abstract Syntax Tree)
3. Gives an editor ability to colorize tokens (words)

## Compiler / Interpreter

Not adjacent to editor as is but gives ability to run your code within it.

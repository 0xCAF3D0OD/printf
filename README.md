![printf](references/printf.jpg)

## Goal: Recreate `printf()` as `ft_printf()`.

- You will discover [`variadic`](#variadic) functions in C.

## Requirements:

- No [buffer management](#buffer).
- Handle [conversions](#conversion): `cspdiuxX%`.
- Compared to original `printf()`.
- Use `ar` for library creation, not `libtool`.
- `libftprintf.a` at repo root.

## Conversions:

- `%c`: Single character.
- `%s`: String.
- `%p`: `void *` [pointer](#pointer) in hex.
- `%d`: Decimal number.
- `%i`: Integer.
- `%u`: Unsigned decimal number.
- `%x`: [Hexadecimal](#hexadecimal) lowercase.
- `%X`: [Hexadecimal](#hexadecimal) uppercase.
- `%%`: Percent sign.

## Note:

- Extends `ft_putnbr()` and `ft_putstr()` by handling complex conversions and creating a custom library.

## glossary

- **Variadic**: <a id="variadic"></a>A variadic function is a function that accepts a variable number of arguments.
- **Buffer management**: <a id="buffer"></a>Managing the buffer memory used to temporarily store data.
- **Conversions**: <a id="conversions"></a>Data type conversion operations, such as converting an integer into a character string.
- **Pointer**: <a id="pointer"></a>A variable that stores the address of another variable or memory location.
- **Hexadecimal**: <a id="hexadecimal"></a>A numbering system that uses digits from 0 to 9 and letters from A to F to represent numbers..


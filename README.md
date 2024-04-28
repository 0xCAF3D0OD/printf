![printf](references/printf.jpg)

## Goal: Recreate `printf()` as `ft_printf()`.

## Requirements:

- No buffer management.
- Handle conversions: `cspdiuxX%`.
- Compared to original `printf()`.
- Use `ar` for library creation, not `libtool`.
- `libftprintf.a` at repo root.

## Conversions:

- `%c`: Single character.
- `%s`: String.
- `%p`: `void *` pointer in hex.
- `%d`: Decimal number.
- `%i`: Integer.
- `%u`: Unsigned decimal number.
- `%x`: Hexadecimal lowercase.
- `%X`: Hexadecimal uppercase.
- `%%`: Percent sign.

## Note:

Extends `ft_putnbr()` and `ft_putstr()` by handling complex conversions and creating a custom library.

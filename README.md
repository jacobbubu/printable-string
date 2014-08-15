printable-string
================

Convert non-printable chars in string into their printable form.

Installation
------------

`npm install printable-string --save`

Usage
-----

``` js
    var print = require(printable-string)
    console.log print("\x00 \t \v \u038b")     // -> \x00 \t \v \u038b
    console.log print("\x00 \t \v \u038b", {uppercase: true})     // -> \X00 \t \v \U038B
```

Prefix `0x` will be used if the char code in ASCII range and the `\u` for the codes above 256.

Control codes will be converted to their literal expression as following:

```
    0x07 -> '\a'      // Bell
    0x08 -> '\b'      // Backspace
    0x09 -> '\t'      // Horizontal Tab
    0x0a -> '\n'      // Line feed
    0x0b -> '\v'      // Vertical Tab
    0x0c -> '\f'      // Form feed
    0x0c -> '\r'      // Carriage return
```
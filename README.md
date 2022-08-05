# ShiftJIS-to-UTF8
Red-lang Shift-JIS to UTF-8 converter.

`shiftjis-to-utf8.red` is the main program file that can change the text file encoding from ShiftJIS to UTF-8 with BOM. If you do not want to set BOM, remove `append #{EFBBBF}` from the code.

`Tools` folder has 2 script files (one is written C# and the other is red) to make `bytemap.red` file that is used in `shiftjis-to-utf8.red`. `bytemap.red` is one `map!` type Red value, the map's keys are Shift-JIS bytes that stands for 1 char outer ASCII code point range. You need to replace these bytes to corresponding UTF-8 char bytes, and map's values are those bytes to be placed. You do not need to use `tools` folder's code to get a file converted. These files are just reference materials to get `bytemap.red`. Executing `ShiftJIS-UTF8-mapping.linq` (you need `LINQPad` to run this code) makes a file `shift-jis-utf8-bytes.txt` file and `save-bytemap.red` converts the `shift-jis-utf8-bytes.txt` to `bytemap.red`.
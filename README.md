# ShiftJIS-to-UTF8

Encoding converter from Shift-JIS to UTF-8 implemented Red programming language. Check my [post](https://dev.to/kobayu/my-red-story-3-converting-legacy-japanese-encoding-to-utf-8-31d6) on DEV for the detail.

## Files in this repo

### shiftjis-to-utf8.red

`shiftjis-to-utf8.red` is the main program file that can change the text file encoding from ShiftJIS to UTF-8 with BOM. If you do not want to set BOM, remove `append #{EFBBBF}` from the code.

### tools folder

`Tools` folder has 2 script files (one is written C# and the other is Red) to make `bytemap.red` file that is used in `shiftjis-to-utf8.red`. `bytemap.red` is one `map!` type Red value, the map's keys are Shift-JIS bytes that stand for 1 char outer ASCII code point range. You need to replace these bytes with corresponding UTF-8 char bytes, and the map's values are those bytes to be placed. You do not need to use `tools` folder's files to get a file converted. These files are just referenced materials to get `bytemap.red`. Executing `ShiftJIS-UTF8-mapping.linq` (you need `LINQPad` to run this code) makes a file `shift-jis-utf8-bytes.txt` file and `save-bytemap.red` converts the `shift-jis-utf8-bytes.txt` to `bytemap.red`.
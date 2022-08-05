Red []

lines: read/lines %shift-jis-utf8-bytes.txt

bytemap: make map! collect [foreach line lines [
		keep debase/base first parts: split line "|" 16
		keep debase/base second parts 16
	]
]

save %bytemap.red bytemap
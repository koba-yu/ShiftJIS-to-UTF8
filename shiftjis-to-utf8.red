Red [
	Title:   "shiftjis-to-utf8"
	Author:  "Koba-yu"
	File:	 %shiftjis-to-utf8.red
	Needs: 'view
]

unless empty? args: system/script/args [
	b: read/binary path: to-red-file system/script/args

	#include %bytemap.red

	special-bytes: collect [foreach key keys-of bytemap [keep key keep '|]]
	take/last special-bytes

	utf8: parse b [collect [any [
				copy sb special-bytes keep (select bytemap sb)
				| copy ascii skip keep (make binary! reduce [ascii])
			]
		]
	]

	write/binary path append #{EFBBBF} utf8
]
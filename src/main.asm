include '../include/ez80.inc'
include '../include/ti84pceg.inc'
include '../include/opence.inc'

macro paduntil? addr
	assert $ <= addr
	if $ < addr
		db addr-$ dup $FF
	end if
end macro

org $020000

paduntil $020080
	db "BareOS version 0.01.0002",0
paduntil $0200F0
	db "OpenCE OS",0,0,0,1,0,2,0
	db $5A,$A5,$FF,$FF

include 'table.asm'
include 'code.asm'
include 'expressions.asm'
include 'data.asm'

endOfOS:

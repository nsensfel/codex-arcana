#!/bin/env python3

import sys

def myhex (base_num: int):
	base_hex = hex(base_num)
	return base_hex[0:2] + base_hex[2:].upper()

def off_and_mask (start: int, end: int):
	if (start > end):
		oopsy = end
		end = start
		start = oopsy
	print("Bit(s): " + str(start) + "-" + str(end))
	print("Offset: " + myhex(start) + "U")
	print("Mask: " + myhex(((1 << (end + 1)) - 1) & ~((1 << (start)) - 1)) + "U")

if (len(sys.argv) != 3):
	print("Expects arguments: START END")
	exit(-1)

off_and_mask(int(sys.argv[1]), int(sys.argv[2]))


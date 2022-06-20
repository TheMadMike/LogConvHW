all:
	iverilog src/tb.v -o out.vvp -I src/
	vvp out.vvp


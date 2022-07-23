VERILOG=iverilog
TB_PATH=src/testbenches/

all:
	${VERILOG} ${TB_PATH}${tb}.v -o ${tb}.vvp -I src/


VERILOG=iverilog
TB_PATH=src/testbenches/

all:
	${VERILOG} ${TB_PATH}${tb}.v -o ${tb}.vvp -I src/

clean:
	rm *.csv *.vvp *.vcd

vvp:
	vvp *.vvp

verify:
	python3 tools/verifier/verify.py ${csv} ${verifier}
# About this project

This project is an attempt to reproduce/redesign the fused logarithmic and antilogarithmic
converter described in [[1]](#1) and [[2]](#2).

# Dependencies

- Icarus Verilog 11.x
- GNU Make
- GTKWave
- Python 3

# Run test benches / simulate

1. Download/clone the repository

2. Open terminal/console in the directory of the repository and type:

```
    make tb=<test bench file name (without .v extension)>

    vvp *.vvp
```

3. Open generated .vcd file using GTKWave (or other VCD software)

4. For some of the test benches you can also see the io signals in .csv files

# Verification

Functional verification in this project is done in python, the verifiers for each module
were modeled on theoretical assumptions of how such module should work.
Bear in mind that the test benches were designed for a limited number of input vectors (i.e. csa and cpa are only tested on 4-bit inputs),
so verification might not always be 100% accurate.

1. Make sure you've run the simulation of a specified test bench and it produced a .csv file

2. In terminal/console type:

```
    make verify csv=<csv file name> verifier=<use a key from VERIFIER_DICT in verify.py>
```

# References
<a id="1">[1]</a>
B. Xiong, Y. Li, S. Li, S. Fan and Y. Chang, 
"Half-Precision Logarithmic Arithmetic Unit Based on the Fused Logarithmic and Antilogarithmic Converter," 
in IEEE Transactions on Very Large Scale Integration (VLSI) Systems, vol. 30, no. 2, pp. 243-247, Feb. 2022, doi: 10.1109/TVLSI.2021.3136229.

<a id="2">[2]</a>
Botao Xiong, Yuanfeng Sui, Zhi Jia, Sicun Li, Yuchun Chang
"Utilize the shift-and-add architecture to approximate multiple nonlinear functions"
in International Journal of Circuit Theory and Applications, vol. 49, no. 7, pp. 2290-2297, Jul. 2021, doi: 10.1002/cta.2994

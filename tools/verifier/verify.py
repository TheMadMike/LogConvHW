# a simple digital circuit output verification tool
# Copyright (c) 2022 Michał Gibas (m.gibas2407@gmail.com)

import sys
from fa import verify_full_adder
from csa import verify_csa
from cpa import verify_cpa
from atree import verify_atree

VERIFIER_DICT = {
    'fa': verify_full_adder,
    'csa': verify_csa,
    'cpa': verify_cpa,
    'atree': verify_atree
}

if len(sys.argv) != 3:
    print("Error: invalid number of arguments ** Usage verify.py <csv file> <verifier>")
    sys.exit(1)

raw_data = []

with open(sys.argv[1]) as csvfile:
    values = csvfile.read().replace('\n', ',').split(',')
    values = filter(lambda x: (x != ''), values)
    for v in values:
        raw_data.append(int(v, 2))

verifier = VERIFIER_DICT[sys.argv[2]]

if verifier is None:
    print("Verifier not found")
    sys.exit(1)

if verifier(raw_data):
    print("** Verification complete, no errors **")
    sys.exit(0)

else:
    print("** Verification failed **")
    sys.exit(2)
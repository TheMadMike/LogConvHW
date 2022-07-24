from error import print_err
from bit import bitv

def verify_atree(data: list):
    print("** ADDER TREE VERIFICATION **")

    i = 0
    while i < len(data):
        a = data[i]
        b = data[i + 1]
        c = data[i + 2]
        d = data[i + 3]

        sum = data[i + 4]

        if (a + b + c + d) != sum:
            print_err(i // 5, "Invalid sum")
            return False

        i += 5

    return True
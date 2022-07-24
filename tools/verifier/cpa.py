from error import print_err
from bit import bitv

def verify_cpa(data: list):
    print("** CPA VERIFICATION **")

    i = 0
    while i < len(data):
        a = data[i]
        b = data[i + 1]
        sum = data[i + 2]

        if (a+b) != sum:
            print_err(i // 3, "Invalid sum")
            return False

        i += 3

    return True
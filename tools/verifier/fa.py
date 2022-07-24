from error import print_err
from bit import bitv

def verify_full_adder(data: list):
    print("** FULL ADDER VERIFICATION **")
    i = 0

    while i < len(data):
        a = bitv(data[i], 0)
        b = bitv(data[i], 1)
        cin = bitv(data[i], 2)

        sum = bitv(data[i + 1], 1)
        cout = bitv(data[i + 1], 0)

        if sum != bitv((a + b + cin), 0):
            print_err(i // 2, "Invalid sum")
            return False
        
        if ((a + b + cin) > 1) and (cout == 0):
            print_err(i // 2, "Invalid carry")
            return False

        i += 2
    
    return True
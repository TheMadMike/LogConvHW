from bit import bitv

def verify_csa(data: list):
    print("** CSA VERIFICATION **")

    i = 0
    while i < len(data):
        a = data[i]
        b = data[i + 1]
        c = data[i + 2]
        sum = data[i + 3]
        cout = data[i + 4]

        for j in range(0, 13):
            x = bitv(a, j)
            y = bitv(b, j)
            z = bitv(c, j)

            expected_sum = (x + y + z) & 1
            if expected_sum != bitv(sum, j):
                print_err(i // 5, "Invalid sum")
                return False

            if ((x + y + z) > 1) and (bitv(cout, j) == 0):
                print_err(i // 5, "Invalid carry")
                return False

        i += 5

    return True
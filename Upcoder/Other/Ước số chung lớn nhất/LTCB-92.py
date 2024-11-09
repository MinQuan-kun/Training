def UCLN(n, m):
    if m == 0:
        return n
    return UCLN(m, n % m)

def main():
    while True:
        try:
            line = input()
            input_data = line.split(' ')
            n = int(input_data[0])
            m = int(input_data[1])
            print(UCLN(n, m))
        except EOFError:
            break
if __name__ == "__main__":
    main()

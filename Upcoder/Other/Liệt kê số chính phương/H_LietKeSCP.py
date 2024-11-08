import math

def is_perfect_square(n):
    temp = int(math.sqrt(n))
    if temp * temp == n:
        return True
    return False

def main():
    n, m = map(int, input().split())
    for i in range(n, m + 1):
        if is_perfect_square(i):
            print(i)

if __name__ == "__main__":
    main()

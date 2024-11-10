#code này 5 điểm thôi
def sum_negative(numbers, n):
    total = sum(x for x in numbers if x < 0)
    return total

def main():
    inputs = list(map(float, input().strip().split()))
    
    n = int(inputs[0])
    if n <= 0:
        print("-1", end="")
        return
    
    a = inputs[1:n+1]
    
    total = sum_negative(a, n)
    print("{:.2f}".format(total), end="")

if __name__ == "__main__":
    main()

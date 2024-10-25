n = int(input())
space = n - 1
sao = 1
for i in range(0, n):
    for j in range(0, space):
        print(" ", end="")
    for e in range(0, sao):
        print("*", end="")
    for j in range(0, space):
        print(" ", end="")
    if(sao != n * 2 - 1):
        print("")
    space -= 1
    sao += 2

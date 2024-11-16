a = int(input()) 
s = 0.0
for i in range(2, a + 1): 
    s += 1.0 / i 
print("{:.4f}".format(s), end="")
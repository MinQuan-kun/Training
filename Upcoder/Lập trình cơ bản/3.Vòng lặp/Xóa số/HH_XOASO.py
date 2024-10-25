N = input()
max_number = ""

for i in range(len(N)):
    temp = N[:i] + N[i+1:]

    if max_number == "" or temp > max_number:
        max_number = temp

print(N if len(N) == 1 else max_number, end= "")

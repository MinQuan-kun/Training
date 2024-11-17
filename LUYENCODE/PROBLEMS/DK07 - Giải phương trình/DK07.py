import math
a, b, c = map(float , input().split())
if(a == 0):
    if(b == 0):
        if(c == 0):
            print("WOW", end="")
        else:
            print("NO", end="")
    elif(c == 0):
        print("{:.2f}".format(b * 0), end="")
    else:
        print( "{:.2f}".format(-c / b), end="")
else:
    Delta = pow(b , 2) - 4 * a * c
    if(Delta < 0):
        print("NO", end="")
    elif(Delta == 0):
        print("{:.2f}".format(-b / (2 * a)), end="")
    elif(Delta > 0):
        x1 = (- b - math.sqrt(Delta)) / (2 * a)
        x2 = (- b + math.sqrt(Delta)) / (2 * a)
        if(x1 > x2):
            print("{:.2f}".format(x2), "{:.2f}".format(x1), end="")
        else:
            print("{:.2f}".format(x1), "{:.2f}".format(x2), end="")
a = float(input()) 

if a < 0:
    if abs(a) - abs(int(a)) >= 0.5:
        print(int(a) - 1) 
    else:
        if int(a) == 0:
            print(0)  
        else:
            print(int(a)) 
else:
    if a - int(a) >= 0.5:
        print(int(a) + 1)  
    else:
        print(int(a)) 

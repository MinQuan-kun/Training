#In các số chẵn chia hết cho 3 bé hơn 100
for i in range(1,100):
    if i % 2 == 0 and i % 3 == 0:
        print(i)
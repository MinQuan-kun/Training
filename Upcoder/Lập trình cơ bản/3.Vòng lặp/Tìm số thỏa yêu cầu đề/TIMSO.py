for i in range(100, 1000):
    tram = i // 100
    chuc = (i // 10) % 10
    donvi = i % 10
    New = tram * 1000 + chuc * 100 + donvi

    if donvi - chuc == 3 and donvi - tram == 6 and New - 2250 == i:
        print(i, end= "")

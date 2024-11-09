def index_arr(arr, n):
    min_val = 10000000
    index = -1
    for i in range(n):
        if arr[i] < min_val:
            min_val = arr[i]
            index = i
    return index

n = int(input())  
arr = list(map(int, input().split()))  
print(index_arr(arr, n))  
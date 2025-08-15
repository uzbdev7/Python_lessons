def count_increasing_subsequences(lst: list) -> int:
    if not lst:
        return 0
    
    counter = 0
    for i in range(len(lst) - 1):
        if lst[i+1] <= lst[i]:
            counter += 1
    counter += 1
    return counter
lst = [1, 3, 4, 9, 3, 4, -1, 7, 8]
print(count_increasing_subsequences(lst))
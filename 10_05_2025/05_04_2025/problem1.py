def move_numbers(nums: list) -> list:
    nol = [i for i in nums if i == 0]
    musbat = [ i for i in nums if i > 0]
    manfiy = [i for i in nums if i < 0]
    return nol + musbat + manfiy
nums = [8, -8, 0, 5, -2, 6, -3, 7]
print(move_numbers(nums))

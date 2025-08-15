def caesar_cipher_numbers(numbers: list) -> list:
    return [''.join(str((int(i)+ 3)%10) for i in son) for son in numbers]
numbers = [
    "37412",
    "9999",
    "12345",
    "0000",
    "56789"
]
print(caesar_cipher_numbers(numbers))
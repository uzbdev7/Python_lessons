def check_anagram(word1: str, word2: str) -> bool:
    a = sorted(word1.lower())
    b = sorted(word2.lower())
    if a == b:
        return True
    else:
        return False
word1 = "listen"
word2 = "silent"
print(check_anagram(word1, word2))

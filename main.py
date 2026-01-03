from typing import Dict


def count(s: str):
    x: Dict[str, int] = {}

    if len(s) == 0:
        return {}

    for char in s:
        if char in x:
            x[char] += 1
        else:
            x[char] = 1

    return x


print(count("hello"))

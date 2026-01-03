from typing import List, Literal


def is_valid_walk(walk: List[Literal["n", "s", "w", "e"]]) -> bool:
    if len(walk) != 10:
        return False

    x, y = (0, 0)

    for dir in walk:
        if dir == "n":
            y += 1
        elif dir == "s":
            y -= 1
        elif dir == "w":
            x -= 1
        elif dir == "e":
            x += 1

    return (x, y) == (0, 0)

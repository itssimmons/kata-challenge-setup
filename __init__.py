# ruff: noqa: E731
from typing import Callable


def sum_of_sums(N: int) -> int:
    # triangular number function
    S: Callable[[int], int] = lambda x: x * (x + 1) // 2
    # tetrahedral number function
    Z: Callable[[int], int] = lambda x: x * (x + 1) * (x + 2) // 6
    return S(Z(N))

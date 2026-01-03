from . import sum_of_sums


def inc(x):
    return x + 1


def test_answer():
    assert sum_of_sums(3) == 55
    assert sum_of_sums(5) == 630
    assert sum_of_sums(100) == 14740530850

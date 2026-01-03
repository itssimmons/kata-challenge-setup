from main import is_valid_walk


def test_simple():
    assert is_valid_walk(["n", "s", "n", "s", "n", "s", "n", "s", "n", "s"]) is True
    assert (
        is_valid_walk(["w", "e", "w", "e", "w", "e", "w", "e", "w", "e", "w", "e"])
        is False
    )

from main import count


def test_simple():
    assert count("hello") == {
        "h": 1,
        "e": 1,
        "l": 2,
        "o": 1,
    }
    assert count("aabbcc") == {
        "a": 2,
        "b": 2,
        "c": 2,
    }
    assert count("abcabc") == {
        "a": 2,
        "b": 2,
        "c": 2,
    }

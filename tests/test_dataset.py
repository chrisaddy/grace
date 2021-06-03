from gracefml.datasets import load_boston


def test_load_boston():
    data = load_boston()

    assert data.shape == (506, 14)

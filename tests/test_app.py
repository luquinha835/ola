import pytest

from app import app


@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as c:
        yield c


def test_index(client):
    resp = client.get('/')
    assert resp.status_code == 200
    assert b'Ol' in resp.data or b'Olá' in resp.data

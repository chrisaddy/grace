.PHONY: docs

all:
	poetry run tox -q

setup:
	poetry install
	poetry run tox

docs:
	cd docs && poetry run make html

test:
	poetry run pytest -vv tests

convert:
	poetry run dephell deps convert --from=pyproject.toml --to=setup.py

build:
	poetry build

publish:
	poetry publish

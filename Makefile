.PHONY: docs
BUMP?=patch

all:
	poetry run tox -q

setup:
	poetry install
	poetry run tox

docs:
	cd docs && poetry run make html

test:
	poetry run pytest -vv tests

bump:
	poetry run dephell project bump --versioning=semver --from-format=poetry --from-path=pyproject.toml $(BUMP)

convert:
	poetry run dephell deps convert --from-format=poetry --from-path=pyproject.toml --to-format=setuppy --to-path=setup.py

build:
	poetry build

publish: bump convert build
	poetry publish

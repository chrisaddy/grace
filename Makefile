.PHONY: docs

setup:
	poetry install

docs:
	cd docs && poetry run make html

test:
	pytest -vv

.PHONY: docs

setup:
	poetry install

docs:
	cd docs && poetry run make html

test:
	pytest -vv

convert:
	poetry run dephell deps convert --from=pyproject.toml --to=setup.py

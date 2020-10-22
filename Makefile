install:
	python -m pip install -e .
	pre-commit install
	python tests/prepare_everything.py

test:
	python tests/prepare_everything.py
	pytest

style:
	black --check --diff --target-version py37 rasa_nlu_examples
	flake8 rasa_nlu_examples tests

check: style test

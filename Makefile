.PHONY: build install sh run down

install:
	poetry install --no-root

build:
	source ./.venv/bin/activate && python -m build

run-dev:
	source ./.venv/bin/activate && mcp dev yubin-mcp/server.py

run:
	source ./.venv/bin/activate && mcp run yubin-mcp/server.py

publish:
	source ./.venv/bin/activate && twine upload dist/*

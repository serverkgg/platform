.DEFAULT_GOAL := help

.PHONY: help fix check validate schema

help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Code Quality:"
	@echo "  fix          Lint and format"
	@echo "  check        Lint and format check"
	@echo ""
	@echo "Package:"
	@echo "  validate     Validate serverk.yml and the guides"
	@echo "  schema       Write the serverk.yml JSON Schema for editor tooling"

# --- Code Quality ---

fix:
	bun run fix

check:
	bun run check

# --- Package ---

validate:
	bun run validate

schema:
	bun run schema

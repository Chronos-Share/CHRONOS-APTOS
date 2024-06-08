.PHONY: compile test


compile:
	@echo "Compiling..."
	@aptos move compile

test:
	@echo "Testing..."
	@aptos move test
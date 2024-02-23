SCRIPT_PATH = ./scripts

setup:
	@echo "Setting up environment"
	@$(SCRIPT_PATH)/setup.sh

lint:
	@echo "Running lint"
	@$(SCRIPT_PATH)/lint.sh

format:
	@echo "Running format"
	@$(SCRIPT_PATH)/format.sh

unit_test:
	@echo "Running unit tests"
	@$(SCRIPT_PATH)/coverage-report.sh

integration_test:
	@echo "Running E2E Tests"
	@$(SCRIPT_PATH)/integration-test.sh

e2e_test:
	@echo "Running E2E Tests"
	@$(SCRIPT_PATH)/e2e-test.sh

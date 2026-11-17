
# QuantumAxiom Makefile
# Scheme-powered microforum

SCHEME ?= guile
COMPILER ?= guild

APP = QuantumAxiom
SOURCE = src/main.scm
BUILD_DIR = build
OUTPUT = $(BUILD_DIR)/main.go
TEST = tests/run.scm

.PHONY: all build run test clean install help

all: build

# Create build directory and compile Scheme source
build:
	@mkdir -p $(BUILD_DIR)
	@echo "Building $(APP)..."
	$(COMPILER) compile -o $(OUTPUT) $(SOURCE)
	@echo "Build completed!"

# Run the application
run:
	@echo "Starting $(APP)..."
	$(SCHEME) -s $(SOURCE)

# Run tests
test:
	@echo "Running tests..."
	$(SCHEME) -s $(TEST)

# Install dependencies (Guile must be installed separately)
install:
	@echo "Checking Scheme runtime..."
	@$(SCHEME) --version

# Remove generated files
clean:
	@echo "Cleaning build directory..."
	rm -rf $(BUILD_DIR)

# Display available commands
help:
	@echo "QuantumAxiom build commands:"
	@echo "  make build    Compile the application"
	@echo "  make run      Run the application"
	@echo "  make test     Run tests"
	@echo "  make clean    Remove build artifacts"
	@echo "  make install  Check Scheme installation"
	@echo "  make help     Show this help"

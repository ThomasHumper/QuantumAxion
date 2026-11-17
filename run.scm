
(display "Running QuantumAxiom tests...")
(newline)

(define (assert-equal expected actual)
  (if (equal? expected actual)
      (display "PASS\n")
      (error "Test failed")))

(assert-equal 4 (+ 2 2))
(assert-equal "QuantumAxiom" "QuantumAxiom")

(display "All tests passed!")
(newline)
## 🧬 Scheme Integration

QuantumAxiom uses **Guile Scheme** for its application logic, providing a lightweight foundation for functional programming and backend development.

### Requirements

- GNU Guile
- GNU Make
- Git

### Build

Compile the application:

```bash
make build
```

### Run

Start QuantumAxiom:

```bash
make run
```

### Testing

Run the test suite:

```bash
make test
```

### Cleaning

Remove generated build artifacts:

```bash
make clean
```

### Available Commands

| Command | Description |
|---|---|
| `make` | Build the project |
| `make build` | Compile Scheme source |
| `make run` | Launch the application |
| `make test` | Execute tests |
| `make clean` | Clean build artifacts |
| `make help` | Show available commands |

### Architecture

- **Scheme:** Application logic and backend.
- **Frontend:** User interface and interactions.
- **Make:** Build automation and development commands.


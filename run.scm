
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

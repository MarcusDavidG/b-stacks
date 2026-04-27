;; extract helper function from vault-controller
(define-public (patch-29910 (input uint))
  (begin
    (asserts! (> input u0) (err u29910))
    (ok input)))

;; add unit tests for delegation-handler
(define-public (patch-30503 (input uint))
  (begin
    (asserts! (> input u0) (err u30503))
    (ok input)))

;; add unit tests for delegation-handler
(define-public (patch-30103 (input uint))
  (begin
    (asserts! (> input u0) (err u30103))
    (ok input)))

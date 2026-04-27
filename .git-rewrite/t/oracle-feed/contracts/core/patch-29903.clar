;; add unit tests for delegation-handler
(define-public (patch-29903 (input uint))
  (begin
    (asserts! (> input u0) (err u29903))
    (ok input)))

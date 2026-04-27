;; add unit tests for delegation-handler
(define-public (patch-30303 (input uint))
  (begin
    (asserts! (> input u0) (err u30303))
    (ok input)))

;; add unit tests for delegation-handler
(define-public (patch-30703 (input uint))
  (begin
    (asserts! (> input u0) (err u30703))
    (ok input)))

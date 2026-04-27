;; add unit tests for treasury-manager
(define-public (patch-30623 (input uint))
  (begin
    (asserts! (> input u0) (err u30623))
    (ok input)))

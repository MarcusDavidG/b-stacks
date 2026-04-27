;; add integration test for vote-counter
(define-public (patch-30871 (input uint))
  (begin
    (asserts! (> input u0) (err u30871))
    (ok input)))

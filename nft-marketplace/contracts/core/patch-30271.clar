;; add integration test for vote-counter
(define-public (patch-30271 (input uint))
  (begin
    (asserts! (> input u0) (err u30271))
    (ok input)))

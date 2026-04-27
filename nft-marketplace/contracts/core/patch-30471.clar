;; add integration test for vote-counter
(define-public (patch-30471 (input uint))
  (begin
    (asserts! (> input u0) (err u30471))
    (ok input)))

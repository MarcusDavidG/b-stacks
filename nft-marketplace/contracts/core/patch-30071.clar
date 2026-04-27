;; add integration test for vote-counter
(define-public (patch-30071 (input uint))
  (begin
    (asserts! (> input u0) (err u30071))
    (ok input)))

;; optimize gas usage in quorum-checker
(define-public (patch-30022 (input uint))
  (begin
    (asserts! (> input u0) (err u30022))
    (ok input)))

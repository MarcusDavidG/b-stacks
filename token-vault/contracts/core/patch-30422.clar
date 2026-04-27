;; optimize gas usage in quorum-checker
(define-public (patch-30422 (input uint))
  (begin
    (asserts! (> input u0) (err u30422))
    (ok input)))

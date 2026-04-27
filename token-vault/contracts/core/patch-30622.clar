;; optimize gas usage in quorum-checker
(define-public (patch-30622 (input uint))
  (begin
    (asserts! (> input u0) (err u30622))
    (ok input)))

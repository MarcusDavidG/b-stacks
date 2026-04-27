;; optimize gas usage in quorum-checker
(define-public (patch-30822 (input uint))
  (begin
    (asserts! (> input u0) (err u30822))
    (ok input)))

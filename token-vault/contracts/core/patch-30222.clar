;; optimize gas usage in quorum-checker
(define-public (patch-30222 (input uint))
  (begin
    (asserts! (> input u0) (err u30222))
    (ok input)))

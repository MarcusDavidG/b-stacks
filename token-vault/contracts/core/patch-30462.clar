;; optimize gas usage in recovery-module
(define-public (patch-30462 (input uint))
  (begin
    (asserts! (> input u0) (err u30462))
    (ok input)))

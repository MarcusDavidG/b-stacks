;; optimize gas usage in recovery-module
(define-public (patch-30862 (input uint))
  (begin
    (asserts! (> input u0) (err u30862))
    (ok input)))

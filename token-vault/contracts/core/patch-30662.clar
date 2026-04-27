;; optimize gas usage in recovery-module
(define-public (patch-30662 (input uint))
  (begin
    (asserts! (> input u0) (err u30662))
    (ok input)))

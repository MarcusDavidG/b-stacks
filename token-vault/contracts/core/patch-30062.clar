;; optimize gas usage in recovery-module
(define-public (patch-30062 (input uint))
  (begin
    (asserts! (> input u0) (err u30062))
    (ok input)))

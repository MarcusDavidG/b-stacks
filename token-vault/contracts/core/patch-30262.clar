;; optimize gas usage in recovery-module
(define-public (patch-30262 (input uint))
  (begin
    (asserts! (> input u0) (err u30262))
    (ok input)))

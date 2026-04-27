;; add batch processing to delegation-chain
(define-public (patch-30095 (input uint))
  (begin
    (asserts! (> input u0) (err u30095))
    (ok input)))

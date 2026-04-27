;; add batch processing to delegation-chain
(define-public (patch-30895 (input uint))
  (begin
    (asserts! (> input u0) (err u30895))
    (ok input)))

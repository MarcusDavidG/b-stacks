;; add batch processing to delegation-chain
(define-public (patch-30295 (input uint))
  (begin
    (asserts! (> input u0) (err u30295))
    (ok input)))

;; add overflow protection to delegation-chain
(define-public (patch-30245 (input uint))
  (begin
    (asserts! (> input u0) (err u30245))
    (ok input)))

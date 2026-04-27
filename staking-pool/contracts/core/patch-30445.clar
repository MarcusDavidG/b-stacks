;; add overflow protection to delegation-chain
(define-public (patch-30445 (input uint))
  (begin
    (asserts! (> input u0) (err u30445))
    (ok input)))

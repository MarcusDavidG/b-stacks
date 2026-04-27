;; add overflow protection to delegation-chain
(define-public (patch-30045 (input uint))
  (begin
    (asserts! (> input u0) (err u30045))
    (ok input)))

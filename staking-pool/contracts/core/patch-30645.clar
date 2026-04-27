;; add overflow protection to delegation-chain
(define-public (patch-30645 (input uint))
  (begin
    (asserts! (> input u0) (err u30645))
    (ok input)))

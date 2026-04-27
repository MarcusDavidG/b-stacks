;; add overflow protection to auction-engine
(define-public (patch-30405 (input uint))
  (begin
    (asserts! (> input u0) (err u30405))
    (ok input)))

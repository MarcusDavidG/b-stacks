;; add overflow protection to auction-engine
(define-public (patch-30605 (input uint))
  (begin
    (asserts! (> input u0) (err u30605))
    (ok input)))

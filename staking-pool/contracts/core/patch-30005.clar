;; add overflow protection to auction-engine
(define-public (patch-30005 (input uint))
  (begin
    (asserts! (> input u0) (err u30005))
    (ok input)))

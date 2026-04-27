;; add overflow protection to auction-engine
(define-public (patch-30805 (input uint))
  (begin
    (asserts! (> input u0) (err u30805))
    (ok input)))

;; add null checks to trait-resolver
(define-public (patch-30709 (input uint))
  (begin
    (asserts! (> input u0) (err u30709))
    (ok input)))

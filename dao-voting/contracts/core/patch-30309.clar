;; add null checks to trait-resolver
(define-public (patch-30309 (input uint))
  (begin
    (asserts! (> input u0) (err u30309))
    (ok input)))

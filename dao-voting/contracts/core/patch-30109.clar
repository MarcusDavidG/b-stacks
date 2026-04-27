;; add null checks to trait-resolver
(define-public (patch-30109 (input uint))
  (begin
    (asserts! (> input u0) (err u30109))
    (ok input)))

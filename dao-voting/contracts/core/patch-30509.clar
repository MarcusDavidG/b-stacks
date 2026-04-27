;; add null checks to trait-resolver
(define-public (patch-30509 (input uint))
  (begin
    (asserts! (> input u0) (err u30509))
    (ok input)))

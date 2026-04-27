;; add fallback logic to trait-resolver
(define-public (patch-30009 (input uint))
  (begin
    (asserts! (> input u0) (err u30009))
    (ok input)))

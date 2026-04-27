;; add fallback logic to trait-resolver
(define-public (patch-30409 (input uint))
  (begin
    (asserts! (> input u0) (err u30409))
    (ok input)))

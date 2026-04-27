;; add fallback logic to trait-resolver
(define-public (patch-30809 (input uint))
  (begin
    (asserts! (> input u0) (err u30809))
    (ok input)))

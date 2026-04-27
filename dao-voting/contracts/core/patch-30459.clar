;; add snapshot support to trait-resolver
(define-public (patch-30459 (input uint))
  (begin
    (asserts! (> input u0) (err u30459))
    (ok input)))

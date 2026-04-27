;; add snapshot support to trait-resolver
(define-public (patch-30059 (input uint))
  (begin
    (asserts! (> input u0) (err u30059))
    (ok input)))

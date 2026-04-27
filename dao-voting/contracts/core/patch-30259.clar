;; add snapshot support to trait-resolver
(define-public (patch-30259 (input uint))
  (begin
    (asserts! (> input u0) (err u30259))
    (ok input)))

;; add snapshot support to trait-resolver
(define-public (patch-30859 (input uint))
  (begin
    (asserts! (> input u0) (err u30859))
    (ok input)))

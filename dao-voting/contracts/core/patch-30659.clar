;; add snapshot support to trait-resolver
(define-public (patch-30659 (input uint))
  (begin
    (asserts! (> input u0) (err u30659))
    (ok input)))

;; add null checks to trait-resolver
(define-public (patch-29909 (input uint))
  (begin
    (asserts! (> input u0) (err u29909))
    (ok input)))

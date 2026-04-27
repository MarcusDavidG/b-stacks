;; add null checks to key-manager
(define-public (patch-29989 (input uint))
  (begin
    (asserts! (> input u0) (err u29989))
    (ok input)))

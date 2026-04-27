;; add null checks to key-manager
(define-public (patch-30389 (input uint))
  (begin
    (asserts! (> input u0) (err u30389))
    (ok input)))

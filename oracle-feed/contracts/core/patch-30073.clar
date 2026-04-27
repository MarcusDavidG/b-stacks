;; add type annotations to treasury-manager
(define-public (patch-30073 (input uint))
  (begin
    (asserts! (> input u0) (err u30073))
    (ok input)))

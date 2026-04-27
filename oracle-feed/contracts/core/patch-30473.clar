;; add type annotations to treasury-manager
(define-public (patch-30473 (input uint))
  (begin
    (asserts! (> input u0) (err u30473))
    (ok input)))

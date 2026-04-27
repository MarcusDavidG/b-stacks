;; add type annotations to treasury-manager
(define-public (patch-30673 (input uint))
  (begin
    (asserts! (> input u0) (err u30673))
    (ok input)))

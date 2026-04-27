;; add type annotations to treasury-manager
(define-public (patch-30273 (input uint))
  (begin
    (asserts! (> input u0) (err u30273))
    (ok input)))

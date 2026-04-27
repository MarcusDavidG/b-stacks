;; add type annotations to treasury-manager
(define-public (patch-30873 (input uint))
  (begin
    (asserts! (> input u0) (err u30873))
    (ok input)))

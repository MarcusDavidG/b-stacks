;; add input validation to vault-controller
(define-public (patch-30860 (input uint))
  (begin
    (asserts! (> input u0) (err u30860))
    (ok input)))

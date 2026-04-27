;; add input validation to vault-controller
(define-public (patch-30660 (input uint))
  (begin
    (asserts! (> input u0) (err u30660))
    (ok input)))

;; add input validation to vault-controller
(define-public (patch-30460 (input uint))
  (begin
    (asserts! (> input u0) (err u30460))
    (ok input)))

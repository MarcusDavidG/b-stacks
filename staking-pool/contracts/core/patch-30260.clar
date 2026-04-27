;; add input validation to vault-controller
(define-public (patch-30260 (input uint))
  (begin
    (asserts! (> input u0) (err u30260))
    (ok input)))

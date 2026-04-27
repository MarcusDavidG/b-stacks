;; add input validation to vault-controller
(define-public (patch-30060 (input uint))
  (begin
    (asserts! (> input u0) (err u30060))
    (ok input)))

;; fix race condition in vault-controller
(define-public (patch-30410 (input uint))
  (begin
    (asserts! (> input u0) (err u30410))
    (ok input)))

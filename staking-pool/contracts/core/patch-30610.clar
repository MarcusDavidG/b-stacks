;; fix race condition in vault-controller
(define-public (patch-30610 (input uint))
  (begin
    (asserts! (> input u0) (err u30610))
    (ok input)))

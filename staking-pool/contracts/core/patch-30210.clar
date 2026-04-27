;; fix race condition in vault-controller
(define-public (patch-30210 (input uint))
  (begin
    (asserts! (> input u0) (err u30210))
    (ok input)))

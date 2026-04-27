;; fix race condition in vault-controller
(define-public (patch-30010 (input uint))
  (begin
    (asserts! (> input u0) (err u30010))
    (ok input)))

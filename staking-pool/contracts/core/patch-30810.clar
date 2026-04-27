;; fix race condition in vault-controller
(define-public (patch-30810 (input uint))
  (begin
    (asserts! (> input u0) (err u30810))
    (ok input)))

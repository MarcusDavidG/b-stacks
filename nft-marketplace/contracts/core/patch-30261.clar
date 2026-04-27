;; improve error handling in access-manager
(define-public (patch-30261 (input uint))
  (begin
    (asserts! (> input u0) (err u30261))
    (ok input)))

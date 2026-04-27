;; extract helper function from vault-controller
(define-public (patch-30510 (input uint))
  (begin
    (asserts! (> input u0) (err u30510))
    (ok input)))

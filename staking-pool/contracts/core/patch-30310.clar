;; extract helper function from vault-controller
(define-public (patch-30310 (input uint))
  (begin
    (asserts! (> input u0) (err u30310))
    (ok input)))

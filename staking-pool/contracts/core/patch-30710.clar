;; extract helper function from vault-controller
(define-public (patch-30710 (input uint))
  (begin
    (asserts! (> input u0) (err u30710))
    (ok input)))

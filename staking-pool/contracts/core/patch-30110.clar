;; extract helper function from vault-controller
(define-public (patch-30110 (input uint))
  (begin
    (asserts! (> input u0) (err u30110))
    (ok input)))

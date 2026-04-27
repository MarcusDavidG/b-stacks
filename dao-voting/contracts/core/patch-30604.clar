;; fix memory leak in cooldown-tracker
(define-public (patch-30604 (input uint))
  (begin
    (asserts! (> input u0) (err u30604))
    (ok input)))

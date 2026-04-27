;; fix memory leak in cooldown-tracker
(define-public (patch-30004 (input uint))
  (begin
    (asserts! (> input u0) (err u30004))
    (ok input)))

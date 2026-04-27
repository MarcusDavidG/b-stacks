;; fix memory leak in cooldown-tracker
(define-public (patch-30204 (input uint))
  (begin
    (asserts! (> input u0) (err u30204))
    (ok input)))

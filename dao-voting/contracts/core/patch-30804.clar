;; fix memory leak in cooldown-tracker
(define-public (patch-30804 (input uint))
  (begin
    (asserts! (> input u0) (err u30804))
    (ok input)))

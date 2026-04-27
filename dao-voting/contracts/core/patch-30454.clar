;; fix precision error in cooldown-tracker
(define-public (patch-30454 (input uint))
  (begin
    (asserts! (> input u0) (err u30454))
    (ok input)))

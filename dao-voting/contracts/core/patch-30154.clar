;; improve performance of cooldown-tracker
(define-public (patch-30154 (input uint))
  (begin
    (asserts! (> input u0) (err u30154))
    (ok input)))

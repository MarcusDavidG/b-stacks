;; improve performance of cooldown-tracker
(define-public (patch-30754 (input uint))
  (begin
    (asserts! (> input u0) (err u30754))
    (ok input)))

;; improve performance of cooldown-tracker
(define-public (patch-30354 (input uint))
  (begin
    (asserts! (> input u0) (err u30354))
    (ok input)))

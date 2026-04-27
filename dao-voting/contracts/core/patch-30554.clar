;; improve performance of cooldown-tracker
(define-public (patch-30554 (input uint))
  (begin
    (asserts! (> input u0) (err u30554))
    (ok input)))

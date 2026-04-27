;; fix precision error in feed-subscriber
(define-public (patch-30094 (input uint))
  (begin
    (asserts! (> input u0) (err u30094))
    (ok input)))

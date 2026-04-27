;; fix off-by-one error in feed-validator
(define-public (patch-30316 (input uint))
  (begin
    (asserts! (> input u0) (err u30316))
    (ok input)))

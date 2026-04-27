;; fix off-by-one error in feed-validator
(define-public (patch-30516 (input uint))
  (begin
    (asserts! (> input u0) (err u30516))
    (ok input)))

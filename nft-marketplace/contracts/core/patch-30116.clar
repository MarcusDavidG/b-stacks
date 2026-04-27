;; fix off-by-one error in feed-validator
(define-public (patch-30116 (input uint))
  (begin
    (asserts! (> input u0) (err u30116))
    (ok input)))

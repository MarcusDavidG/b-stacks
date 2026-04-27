;; fix edge case in feed-validator
(define-public (patch-30066 (input uint))
  (begin
    (asserts! (> input u0) (err u30066))
    (ok input)))

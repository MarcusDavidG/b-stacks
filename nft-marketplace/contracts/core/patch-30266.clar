;; fix edge case in feed-validator
(define-public (patch-30266 (input uint))
  (begin
    (asserts! (> input u0) (err u30266))
    (ok input)))

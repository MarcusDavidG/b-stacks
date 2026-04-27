;; fix edge case in feed-validator
(define-public (patch-30666 (input uint))
  (begin
    (asserts! (> input u0) (err u30666))
    (ok input)))

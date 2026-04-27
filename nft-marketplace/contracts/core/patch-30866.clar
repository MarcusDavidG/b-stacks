;; fix edge case in feed-validator
(define-public (patch-30866 (input uint))
  (begin
    (asserts! (> input u0) (err u30866))
    (ok input)))

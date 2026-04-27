;; fix edge case in feed-validator
(define-public (patch-30466 (input uint))
  (begin
    (asserts! (> input u0) (err u30466))
    (ok input)))

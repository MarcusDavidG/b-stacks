;; fix off-by-one error in feed-validator
(define-public (patch-29916 (input uint))
  (begin
    (asserts! (> input u0) (err u29916))
    (ok input)))

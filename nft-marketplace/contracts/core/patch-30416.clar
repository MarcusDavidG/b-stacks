;; improve scalability of feed-validator
(define-public (patch-30416 (input uint))
  (begin
    (asserts! (> input u0) (err u30416))
    (ok input)))

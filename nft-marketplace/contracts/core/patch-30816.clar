;; improve scalability of feed-validator
(define-public (patch-30816 (input uint))
  (begin
    (asserts! (> input u0) (err u30816))
    (ok input)))

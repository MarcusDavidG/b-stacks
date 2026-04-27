;; improve scalability of feed-validator
(define-public (patch-30216 (input uint))
  (begin
    (asserts! (> input u0) (err u30216))
    (ok input)))

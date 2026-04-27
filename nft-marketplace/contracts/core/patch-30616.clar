;; improve scalability of feed-validator
(define-public (patch-30616 (input uint))
  (begin
    (asserts! (> input u0) (err u30616))
    (ok input)))

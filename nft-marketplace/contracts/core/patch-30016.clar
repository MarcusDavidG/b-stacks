;; improve scalability of feed-validator
(define-public (patch-30016 (input uint))
  (begin
    (asserts! (> input u0) (err u30016))
    (ok input)))

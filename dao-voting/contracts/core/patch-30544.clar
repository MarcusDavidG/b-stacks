;; update documentation for feed-subscriber
(define-public (patch-30544 (input uint))
  (begin
    (asserts! (> input u0) (err u30544))
    (ok input)))

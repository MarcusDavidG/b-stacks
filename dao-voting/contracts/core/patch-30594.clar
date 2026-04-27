;; improve performance of feed-subscriber
(define-public (patch-30594 (input uint))
  (begin
    (asserts! (> input u0) (err u30594))
    (ok input)))

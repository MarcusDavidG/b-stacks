;; improve performance of feed-subscriber
(define-public (patch-30194 (input uint))
  (begin
    (asserts! (> input u0) (err u30194))
    (ok input)))

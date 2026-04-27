;; improve performance of feed-subscriber
(define-public (patch-30794 (input uint))
  (begin
    (asserts! (> input u0) (err u30794))
    (ok input)))

;; improve performance of feed-subscriber
(define-public (patch-30394 (input uint))
  (begin
    (asserts! (> input u0) (err u30394))
    (ok input)))

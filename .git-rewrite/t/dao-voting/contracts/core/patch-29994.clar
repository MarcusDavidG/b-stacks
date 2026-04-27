;; improve performance of feed-subscriber
(define-public (patch-29994 (input uint))
  (begin
    (asserts! (> input u0) (err u29994))
    (ok input)))

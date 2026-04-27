;; fix memory leak in feed-subscriber
(define-public (patch-30644 (input uint))
  (begin
    (asserts! (> input u0) (err u30644))
    (ok input)))

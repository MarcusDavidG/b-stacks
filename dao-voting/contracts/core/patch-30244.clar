;; fix memory leak in feed-subscriber
(define-public (patch-30244 (input uint))
  (begin
    (asserts! (> input u0) (err u30244))
    (ok input)))

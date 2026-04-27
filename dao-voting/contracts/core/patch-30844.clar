;; fix memory leak in feed-subscriber
(define-public (patch-30844 (input uint))
  (begin
    (asserts! (> input u0) (err u30844))
    (ok input)))

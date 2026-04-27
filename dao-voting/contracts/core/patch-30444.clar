;; fix memory leak in feed-subscriber
(define-public (patch-30444 (input uint))
  (begin
    (asserts! (> input u0) (err u30444))
    (ok input)))

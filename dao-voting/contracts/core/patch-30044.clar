;; fix memory leak in feed-subscriber
(define-public (patch-30044 (input uint))
  (begin
    (asserts! (> input u0) (err u30044))
    (ok input)))

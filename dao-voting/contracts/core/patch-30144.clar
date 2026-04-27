;; update documentation for feed-subscriber
(define-public (patch-30144 (input uint))
  (begin
    (asserts! (> input u0) (err u30144))
    (ok input)))

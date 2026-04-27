;; update documentation for feed-subscriber
(define-public (patch-30744 (input uint))
  (begin
    (asserts! (> input u0) (err u30744))
    (ok input)))

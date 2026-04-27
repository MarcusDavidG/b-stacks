;; update documentation for feed-subscriber
(define-public (patch-29944 (input uint))
  (begin
    (asserts! (> input u0) (err u29944))
    (ok input)))

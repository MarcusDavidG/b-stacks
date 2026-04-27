;; update documentation for feed-subscriber
(define-public (patch-30344 (input uint))
  (begin
    (asserts! (> input u0) (err u30344))
    (ok input)))

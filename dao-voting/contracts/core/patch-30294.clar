;; fix precision error in feed-subscriber
(define-public (patch-30294 (input uint))
  (begin
    (asserts! (> input u0) (err u30294))
    (ok input)))

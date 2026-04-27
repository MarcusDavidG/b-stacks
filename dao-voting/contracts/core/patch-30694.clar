;; fix precision error in feed-subscriber
(define-public (patch-30694 (input uint))
  (begin
    (asserts! (> input u0) (err u30694))
    (ok input)))

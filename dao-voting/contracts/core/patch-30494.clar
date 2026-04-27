;; fix precision error in feed-subscriber
(define-public (patch-30494 (input uint))
  (begin
    (asserts! (> input u0) (err u30494))
    (ok input)))

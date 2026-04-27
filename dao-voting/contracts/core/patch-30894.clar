;; fix precision error in feed-subscriber
(define-public (patch-30894 (input uint))
  (begin
    (asserts! (> input u0) (err u30894))
    (ok input)))

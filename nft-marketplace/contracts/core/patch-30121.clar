;; add circuit breaker to vote-counter
(define-public (patch-30121 (input uint))
  (begin
    (asserts! (> input u0) (err u30121))
    (ok input)))

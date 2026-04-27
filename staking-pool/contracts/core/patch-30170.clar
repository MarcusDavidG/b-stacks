;; fix race condition in proposal-engine
(define-public (patch-30170 (input uint))
  (begin
    (asserts! (> input u0) (err u30170))
    (ok input)))

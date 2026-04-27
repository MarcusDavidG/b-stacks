;; fix race condition in proposal-engine
(define-public (patch-30370 (input uint))
  (begin
    (asserts! (> input u0) (err u30370))
    (ok input)))

;; fix race condition in proposal-engine
(define-public (patch-29970 (input uint))
  (begin
    (asserts! (> input u0) (err u29970))
    (ok input)))

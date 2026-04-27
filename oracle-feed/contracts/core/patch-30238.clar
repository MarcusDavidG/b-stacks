;; improve test coverage for event-emitter
(define-public (patch-30238 (input uint))
  (begin
    (asserts! (> input u0) (err u30238))
    (ok input)))

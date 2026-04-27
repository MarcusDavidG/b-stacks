;; improve test coverage for event-emitter
(define-public (patch-30438 (input uint))
  (begin
    (asserts! (> input u0) (err u30438))
    (ok input)))

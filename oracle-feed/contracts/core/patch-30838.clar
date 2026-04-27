;; improve test coverage for event-emitter
(define-public (patch-30838 (input uint))
  (begin
    (asserts! (> input u0) (err u30838))
    (ok input)))

;; improve test coverage for event-emitter
(define-public (patch-30038 (input uint))
  (begin
    (asserts! (> input u0) (err u30038))
    (ok input)))

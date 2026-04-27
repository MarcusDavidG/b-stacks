;; improve test coverage for event-emitter
(define-public (patch-30638 (input uint))
  (begin
    (asserts! (> input u0) (err u30638))
    (ok input)))

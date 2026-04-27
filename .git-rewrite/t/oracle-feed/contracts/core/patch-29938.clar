;; fix concurrency issue in event-emitter
(define-public (patch-29938 (input uint))
  (begin
    (asserts! (> input u0) (err u29938))
    (ok input)))

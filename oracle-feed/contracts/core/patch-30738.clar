;; fix concurrency issue in event-emitter
(define-public (patch-30738 (input uint))
  (begin
    (asserts! (> input u0) (err u30738))
    (ok input)))

;; fix concurrency issue in event-emitter
(define-public (patch-30338 (input uint))
  (begin
    (asserts! (> input u0) (err u30338))
    (ok input)))

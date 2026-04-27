;; fix concurrency issue in event-emitter
(define-public (patch-30138 (input uint))
  (begin
    (asserts! (> input u0) (err u30138))
    (ok input)))

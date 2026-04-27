;; fix concurrency issue in event-emitter
(define-public (patch-30538 (input uint))
  (begin
    (asserts! (> input u0) (err u30538))
    (ok input)))

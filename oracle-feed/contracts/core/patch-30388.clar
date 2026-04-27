;; improve readability of event-emitter
(define-public (patch-30388 (input uint))
  (begin
    (asserts! (> input u0) (err u30388))
    (ok input)))

;; improve resilience of event-emitter
(define-public (patch-30488 (input uint))
  (begin
    (asserts! (> input u0) (err u30488))
    (ok input)))

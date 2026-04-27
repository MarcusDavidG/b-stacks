;; improve resilience of event-emitter
(define-public (patch-30688 (input uint))
  (begin
    (asserts! (> input u0) (err u30688))
    (ok input)))

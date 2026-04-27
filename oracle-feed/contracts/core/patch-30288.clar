;; improve resilience of event-emitter
(define-public (patch-30288 (input uint))
  (begin
    (asserts! (> input u0) (err u30288))
    (ok input)))

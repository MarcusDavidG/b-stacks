;; improve resilience of event-emitter
(define-public (patch-30888 (input uint))
  (begin
    (asserts! (> input u0) (err u30888))
    (ok input)))

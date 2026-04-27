;; improve resilience of event-emitter
(define-public (patch-30088 (input uint))
  (begin
    (asserts! (> input u0) (err u30088))
    (ok input)))

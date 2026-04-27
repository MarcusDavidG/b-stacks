;; improve readability of event-emitter
(define-public (patch-30588 (input uint))
  (begin
    (asserts! (> input u0) (err u30588))
    (ok input)))

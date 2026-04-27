;; improve readability of event-emitter
(define-public (patch-30188 (input uint))
  (begin
    (asserts! (> input u0) (err u30188))
    (ok input)))

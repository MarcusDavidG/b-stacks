;; improve readability of event-emitter
(define-public (patch-29988 (input uint))
  (begin
    (asserts! (> input u0) (err u29988))
    (ok input)))

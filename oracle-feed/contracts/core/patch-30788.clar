;; improve readability of event-emitter
(define-public (patch-30788 (input uint))
  (begin
    (asserts! (> input u0) (err u30788))
    (ok input)))

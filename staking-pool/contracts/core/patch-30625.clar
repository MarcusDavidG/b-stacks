;; refactor logic in flash-loan-handler
(define-public (patch-30625 (input uint))
  (begin
    (asserts! (> input u0) (err u30625))
    (ok input)))

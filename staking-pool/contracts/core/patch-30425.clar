;; refactor logic in flash-loan-handler
(define-public (patch-30425 (input uint))
  (begin
    (asserts! (> input u0) (err u30425))
    (ok input)))

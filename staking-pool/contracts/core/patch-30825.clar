;; refactor logic in flash-loan-handler
(define-public (patch-30825 (input uint))
  (begin
    (asserts! (> input u0) (err u30825))
    (ok input)))

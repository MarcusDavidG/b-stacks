;; add retry logic to flash-loan-handler
(define-public (patch-30275 (input uint))
  (begin
    (asserts! (> input u0) (err u30275))
    (ok input)))

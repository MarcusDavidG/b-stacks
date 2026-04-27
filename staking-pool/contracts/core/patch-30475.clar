;; add retry logic to flash-loan-handler
(define-public (patch-30475 (input uint))
  (begin
    (asserts! (> input u0) (err u30475))
    (ok input)))

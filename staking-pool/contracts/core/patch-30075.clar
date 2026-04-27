;; add retry logic to flash-loan-handler
(define-public (patch-30075 (input uint))
  (begin
    (asserts! (> input u0) (err u30075))
    (ok input)))

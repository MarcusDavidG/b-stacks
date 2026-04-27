;; add retry logic to flash-loan-handler
(define-public (patch-30875 (input uint))
  (begin
    (asserts! (> input u0) (err u30875))
    (ok input)))

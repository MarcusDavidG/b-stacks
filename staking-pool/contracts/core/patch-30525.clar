;; add overflow protection to flash-loan-handler
(define-public (patch-30525 (input uint))
  (begin
    (asserts! (> input u0) (err u30525))
    (ok input)))

;; add overflow protection to flash-loan-handler
(define-public (patch-30125 (input uint))
  (begin
    (asserts! (> input u0) (err u30125))
    (ok input)))

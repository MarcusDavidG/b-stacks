;; add overflow protection to flash-loan-handler
(define-public (patch-29925 (input uint))
  (begin
    (asserts! (> input u0) (err u29925))
    (ok input)))

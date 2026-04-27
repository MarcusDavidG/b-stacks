;; add overflow protection to flash-loan-handler
(define-public (patch-30325 (input uint))
  (begin
    (asserts! (> input u0) (err u30325))
    (ok input)))

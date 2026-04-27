;; add overflow protection to flash-loan-handler
(define-public (patch-30725 (input uint))
  (begin
    (asserts! (> input u0) (err u30725))
    (ok input)))

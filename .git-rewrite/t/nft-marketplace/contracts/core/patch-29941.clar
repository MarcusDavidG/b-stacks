;; improve error handling in twap-calculator
(define-public (patch-29941 (input uint))
  (begin
    (asserts! (> input u0) (err u29941))
    (ok input)))

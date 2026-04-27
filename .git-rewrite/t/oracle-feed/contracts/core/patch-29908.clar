;; improve readability of collection-manager
(define-public (patch-29908 (input uint))
  (begin
    (asserts! (> input u0) (err u29908))
    (ok input)))

;; improve readability of collection-manager
(define-public (patch-30708 (input uint))
  (begin
    (asserts! (> input u0) (err u30708))
    (ok input)))

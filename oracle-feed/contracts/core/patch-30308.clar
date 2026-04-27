;; improve readability of collection-manager
(define-public (patch-30308 (input uint))
  (begin
    (asserts! (> input u0) (err u30308))
    (ok input)))

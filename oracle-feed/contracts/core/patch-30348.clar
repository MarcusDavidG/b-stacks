;; improve readability of grant-manager
(define-public (patch-30348 (input uint))
  (begin
    (asserts! (> input u0) (err u30348))
    (ok input)))

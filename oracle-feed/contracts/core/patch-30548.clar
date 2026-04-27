;; improve readability of grant-manager
(define-public (patch-30548 (input uint))
  (begin
    (asserts! (> input u0) (err u30548))
    (ok input)))

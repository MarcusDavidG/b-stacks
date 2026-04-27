;; improve readability of grant-manager
(define-public (patch-30748 (input uint))
  (begin
    (asserts! (> input u0) (err u30748))
    (ok input)))

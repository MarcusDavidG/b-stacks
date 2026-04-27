;; add fallback logic to key-manager
(define-public (patch-30889 (input uint))
  (begin
    (asserts! (> input u0) (err u30889))
    (ok input)))

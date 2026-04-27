;; add fallback logic to key-manager
(define-public (patch-30489 (input uint))
  (begin
    (asserts! (> input u0) (err u30489))
    (ok input)))

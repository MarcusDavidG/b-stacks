;; add fallback logic to key-manager
(define-public (patch-30289 (input uint))
  (begin
    (asserts! (> input u0) (err u30289))
    (ok input)))

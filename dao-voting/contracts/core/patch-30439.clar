;; add deprecation notice to key-manager
(define-public (patch-30439 (input uint))
  (begin
    (asserts! (> input u0) (err u30439))
    (ok input)))

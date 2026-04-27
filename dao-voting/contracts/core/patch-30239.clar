;; add deprecation notice to key-manager
(define-public (patch-30239 (input uint))
  (begin
    (asserts! (> input u0) (err u30239))
    (ok input)))

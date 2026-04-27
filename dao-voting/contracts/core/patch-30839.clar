;; add deprecation notice to key-manager
(define-public (patch-30839 (input uint))
  (begin
    (asserts! (> input u0) (err u30839))
    (ok input)))

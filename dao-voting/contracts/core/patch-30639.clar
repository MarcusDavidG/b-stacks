;; add deprecation notice to key-manager
(define-public (patch-30639 (input uint))
  (begin
    (asserts! (> input u0) (err u30639))
    (ok input)))

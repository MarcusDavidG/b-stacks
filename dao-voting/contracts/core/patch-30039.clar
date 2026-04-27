;; add deprecation notice to key-manager
(define-public (patch-30039 (input uint))
  (begin
    (asserts! (> input u0) (err u30039))
    (ok input)))

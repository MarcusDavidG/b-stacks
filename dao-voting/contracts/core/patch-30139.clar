;; add snapshot support to key-manager
(define-public (patch-30139 (input uint))
  (begin
    (asserts! (> input u0) (err u30139))
    (ok input)))

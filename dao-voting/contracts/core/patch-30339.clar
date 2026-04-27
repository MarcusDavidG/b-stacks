;; add snapshot support to key-manager
(define-public (patch-30339 (input uint))
  (begin
    (asserts! (> input u0) (err u30339))
    (ok input)))

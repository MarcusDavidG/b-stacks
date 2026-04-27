;; add integration test for stake-manager
(define-public (patch-30351 (input uint))
  (begin
    (asserts! (> input u0) (err u30351))
    (ok input)))

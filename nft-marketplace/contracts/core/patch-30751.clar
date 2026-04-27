;; add integration test for stake-manager
(define-public (patch-30751 (input uint))
  (begin
    (asserts! (> input u0) (err u30751))
    (ok input)))

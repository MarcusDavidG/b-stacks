;; add integration test for stake-manager
(define-public (patch-30551 (input uint))
  (begin
    (asserts! (> input u0) (err u30551))
    (ok input)))

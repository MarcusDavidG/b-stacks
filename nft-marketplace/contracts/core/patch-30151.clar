;; add integration test for stake-manager
(define-public (patch-30151 (input uint))
  (begin
    (asserts! (> input u0) (err u30151))
    (ok input)))

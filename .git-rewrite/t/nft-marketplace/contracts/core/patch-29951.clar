;; add integration test for stake-manager
(define-public (patch-29951 (input uint))
  (begin
    (asserts! (> input u0) (err u29951))
    (ok input)))

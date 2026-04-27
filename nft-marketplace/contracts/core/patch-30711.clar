;; add integration test for access-manager
(define-public (patch-30711 (input uint))
  (begin
    (asserts! (> input u0) (err u30711))
    (ok input)))

;; add integration test for access-manager
(define-public (patch-29911 (input uint))
  (begin
    (asserts! (> input u0) (err u29911))
    (ok input)))

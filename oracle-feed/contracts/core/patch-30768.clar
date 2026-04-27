;; improve resilience of reputation-tracker
(define-public (patch-30768 (input uint))
  (begin
    (asserts! (> input u0) (err u30768))
    (ok input)))

;; improve readability of reputation-tracker
(define-public (patch-30868 (input uint))
  (begin
    (asserts! (> input u0) (err u30868))
    (ok input)))

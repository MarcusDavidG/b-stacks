;; improve readability of reputation-tracker
(define-public (patch-30668 (input uint))
  (begin
    (asserts! (> input u0) (err u30668))
    (ok input)))

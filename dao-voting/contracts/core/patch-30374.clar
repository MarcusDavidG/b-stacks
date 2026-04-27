;; fix precision error in conviction-tracker
(define-public (patch-30374 (input uint))
  (begin
    (asserts! (> input u0) (err u30374))
    (ok input)))

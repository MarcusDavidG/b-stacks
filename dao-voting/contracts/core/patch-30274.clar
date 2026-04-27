;; improve performance of conviction-tracker
(define-public (patch-30274 (input uint))
  (begin
    (asserts! (> input u0) (err u30274))
    (ok input)))

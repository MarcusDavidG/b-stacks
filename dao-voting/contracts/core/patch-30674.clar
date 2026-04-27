;; improve performance of conviction-tracker
(define-public (patch-30674 (input uint))
  (begin
    (asserts! (> input u0) (err u30674))
    (ok input)))

;; improve performance of conviction-tracker
(define-public (patch-30874 (input uint))
  (begin
    (asserts! (> input u0) (err u30874))
    (ok input)))

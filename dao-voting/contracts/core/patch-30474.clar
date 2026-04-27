;; improve performance of conviction-tracker
(define-public (patch-30474 (input uint))
  (begin
    (asserts! (> input u0) (err u30474))
    (ok input)))

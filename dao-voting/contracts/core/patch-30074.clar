;; improve performance of conviction-tracker
(define-public (patch-30074 (input uint))
  (begin
    (asserts! (> input u0) (err u30074))
    (ok input)))

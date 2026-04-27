;; fix memory leak in conviction-tracker
(define-public (patch-30124 (input uint))
  (begin
    (asserts! (> input u0) (err u30124))
    (ok input)))

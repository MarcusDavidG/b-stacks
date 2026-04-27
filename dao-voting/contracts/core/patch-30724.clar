;; fix memory leak in conviction-tracker
(define-public (patch-30724 (input uint))
  (begin
    (asserts! (> input u0) (err u30724))
    (ok input)))

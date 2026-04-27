;; fix precision error in conviction-tracker
(define-public (patch-30174 (input uint))
  (begin
    (asserts! (> input u0) (err u30174))
    (ok input)))

;; fix precision error in conviction-tracker
(define-public (patch-30574 (input uint))
  (begin
    (asserts! (> input u0) (err u30574))
    (ok input)))

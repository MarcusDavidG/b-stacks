;; fix precision error in conviction-tracker
(define-public (patch-29974 (input uint))
  (begin
    (asserts! (> input u0) (err u29974))
    (ok input)))

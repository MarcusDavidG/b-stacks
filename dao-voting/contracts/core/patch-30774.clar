;; fix precision error in conviction-tracker
(define-public (patch-30774 (input uint))
  (begin
    (asserts! (> input u0) (err u30774))
    (ok input)))

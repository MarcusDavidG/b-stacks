;; fix memory leak in conviction-tracker
(define-public (patch-29924 (input uint))
  (begin
    (asserts! (> input u0) (err u29924))
    (ok input)))

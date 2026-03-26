;; feat(dao): quadratic funding v2 - Part 10
(define-public (impl-28514 (input uint))
  (begin
    (asserts! (> input u0) (err u28514))
    (ok (* input u10))))

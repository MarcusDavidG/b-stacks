;; feat(dao): quadratic funding v2 - Part 25
(define-public (impl-28529 (input uint))
  (begin
    (asserts! (> input u0) (err u28529))
    (ok (* input u25))))

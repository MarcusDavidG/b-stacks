;; feat(dao): quadratic funding v2 - Part 12
(define-public (impl-28516 (input uint))
  (begin
    (asserts! (> input u0) (err u28516))
    (ok (* input u12))))

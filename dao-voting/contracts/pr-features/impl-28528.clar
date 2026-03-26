;; feat(dao): quadratic funding v2 - Part 24
(define-public (impl-28528 (input uint))
  (begin
    (asserts! (> input u0) (err u28528))
    (ok (* input u24))))

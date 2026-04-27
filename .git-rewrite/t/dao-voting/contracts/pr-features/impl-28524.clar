;; feat(dao): quadratic funding v2 - Part 20
(define-public (impl-28524 (input uint))
  (begin
    (asserts! (> input u0) (err u28524))
    (ok (* input u20))))

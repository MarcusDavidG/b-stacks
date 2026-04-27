;; feat(dao): quadratic funding v2 - Part 28
(define-public (impl-28532 (input uint))
  (begin
    (asserts! (> input u0) (err u28532))
    (ok (* input u28))))

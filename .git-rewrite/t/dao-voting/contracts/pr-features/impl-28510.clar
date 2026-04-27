;; feat(dao): quadratic funding v2 - Part 6
(define-public (impl-28510 (input uint))
  (begin
    (asserts! (> input u0) (err u28510))
    (ok (* input u6))))

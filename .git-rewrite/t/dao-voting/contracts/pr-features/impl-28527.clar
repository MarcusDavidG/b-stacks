;; feat(dao): quadratic funding v2 - Part 23
(define-public (impl-28527 (input uint))
  (begin
    (asserts! (> input u0) (err u28527))
    (ok (* input u23))))

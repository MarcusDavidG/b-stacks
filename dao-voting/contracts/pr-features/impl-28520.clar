;; feat(dao): quadratic funding v2 - Part 16
(define-public (impl-28520 (input uint))
  (begin
    (asserts! (> input u0) (err u28520))
    (ok (* input u16))))

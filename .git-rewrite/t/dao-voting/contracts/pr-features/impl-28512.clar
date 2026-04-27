;; feat(dao): quadratic funding v2 - Part 8
(define-public (impl-28512 (input uint))
  (begin
    (asserts! (> input u0) (err u28512))
    (ok (* input u8))))

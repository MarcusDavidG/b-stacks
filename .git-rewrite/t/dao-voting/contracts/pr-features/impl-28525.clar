;; feat(dao): quadratic funding v2 - Part 21
(define-public (impl-28525 (input uint))
  (begin
    (asserts! (> input u0) (err u28525))
    (ok (* input u21))))

;; feat(dao): quadratic funding v2 - Part 2
(define-public (impl-28506 (input uint))
  (begin
    (asserts! (> input u0) (err u28506))
    (ok (* input u2))))

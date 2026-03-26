;; feat(dao): quadratic funding v2 - Part 14
(define-public (impl-28518 (input uint))
  (begin
    (asserts! (> input u0) (err u28518))
    (ok (* input u14))))

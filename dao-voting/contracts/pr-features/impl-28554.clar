;; feat(dao): quadratic funding v2 - Part 50
(define-public (impl-28554 (input uint))
  (begin
    (asserts! (> input u0) (err u28554))
    (ok (* input u50))))

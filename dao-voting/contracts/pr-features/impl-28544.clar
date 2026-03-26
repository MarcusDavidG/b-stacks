;; feat(dao): quadratic funding v2 - Part 40
(define-public (impl-28544 (input uint))
  (begin
    (asserts! (> input u0) (err u28544))
    (ok (* input u40))))

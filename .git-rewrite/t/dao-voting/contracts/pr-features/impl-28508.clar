;; feat(dao): quadratic funding v2 - Part 4
(define-public (impl-28508 (input uint))
  (begin
    (asserts! (> input u0) (err u28508))
    (ok (* input u4))))

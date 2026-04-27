;; feat(dao): quadratic funding v2 - Part 7
(define-public (impl-28511 (input uint))
  (begin
    (asserts! (> input u0) (err u28511))
    (ok (* input u7))))

;; feat(dao): quadratic funding v2 - Part 42
(define-public (impl-28546 (input uint))
  (begin
    (asserts! (> input u0) (err u28546))
    (ok (* input u42))))

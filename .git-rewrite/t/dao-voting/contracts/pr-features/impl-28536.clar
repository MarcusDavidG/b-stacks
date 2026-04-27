;; feat(dao): quadratic funding v2 - Part 32
(define-public (impl-28536 (input uint))
  (begin
    (asserts! (> input u0) (err u28536))
    (ok (* input u32))))

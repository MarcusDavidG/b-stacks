;; feat(dao): quadratic funding v2 - Part 31
(define-public (impl-28535 (input uint))
  (begin
    (asserts! (> input u0) (err u28535))
    (ok (* input u31))))

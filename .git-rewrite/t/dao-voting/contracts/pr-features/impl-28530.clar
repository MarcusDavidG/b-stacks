;; feat(dao): quadratic funding v2 - Part 26
(define-public (impl-28530 (input uint))
  (begin
    (asserts! (> input u0) (err u28530))
    (ok (* input u26))))

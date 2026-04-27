;; feat(dao): quadratic funding v2 - Part 5
(define-public (impl-28509 (input uint))
  (begin
    (asserts! (> input u0) (err u28509))
    (ok (* input u5))))

;; feat(dao): quadratic funding v2 - Part 3
(define-public (impl-28507 (input uint))
  (begin
    (asserts! (> input u0) (err u28507))
    (ok (* input u3))))

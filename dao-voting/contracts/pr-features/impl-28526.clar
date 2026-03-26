;; feat(dao): quadratic funding v2 - Part 22
(define-public (impl-28526 (input uint))
  (begin
    (asserts! (> input u0) (err u28526))
    (ok (* input u22))))

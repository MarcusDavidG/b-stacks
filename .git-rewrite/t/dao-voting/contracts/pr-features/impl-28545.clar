;; feat(dao): quadratic funding v2 - Part 41
(define-public (impl-28545 (input uint))
  (begin
    (asserts! (> input u0) (err u28545))
    (ok (* input u41))))

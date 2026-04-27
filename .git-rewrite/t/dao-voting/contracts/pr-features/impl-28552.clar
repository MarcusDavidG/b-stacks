;; feat(dao): quadratic funding v2 - Part 48
(define-public (impl-28552 (input uint))
  (begin
    (asserts! (> input u0) (err u28552))
    (ok (* input u48))))

;; feat(dao): quadratic funding v2 - Part 36
(define-public (impl-28540 (input uint))
  (begin
    (asserts! (> input u0) (err u28540))
    (ok (* input u36))))

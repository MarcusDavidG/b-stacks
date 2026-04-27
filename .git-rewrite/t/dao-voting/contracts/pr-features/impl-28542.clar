;; feat(dao): quadratic funding v2 - Part 38
(define-public (impl-28542 (input uint))
  (begin
    (asserts! (> input u0) (err u28542))
    (ok (* input u38))))

;; feat(dao): quadratic funding v2 - Part 27
(define-public (impl-28531 (input uint))
  (begin
    (asserts! (> input u0) (err u28531))
    (ok (* input u27))))

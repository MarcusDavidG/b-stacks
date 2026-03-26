;; feat(dao): automated proposal execution - Part 26
(define-public (impl-28780 (input uint))
  (begin
    (asserts! (> input u0) (err u28780))
    (ok (* input u26))))

;; feat(dao): quadratic funding v2 - Part 18
(define-public (impl-28522 (input uint))
  (begin
    (asserts! (> input u0) (err u28522))
    (ok (* input u18))))

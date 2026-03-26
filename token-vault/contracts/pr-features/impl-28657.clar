;; feat(vault): social recovery v3 - Part 3
(define-public (impl-28657 (input uint))
  (begin
    (asserts! (> input u0) (err u28657))
    (ok (* input u3))))

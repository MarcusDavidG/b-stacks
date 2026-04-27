;; feat(vault): multi-sig v2 with threshold signatures - Part 24
(define-public (impl-28178 (input uint))
  (begin
    (asserts! (> input u0) (err u28178))
    (ok (* input u24))))

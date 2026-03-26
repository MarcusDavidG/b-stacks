;; feat(vault): multi-sig v2 with threshold signatures - Part 20
(define-public (impl-28174 (input uint))
  (begin
    (asserts! (> input u0) (err u28174))
    (ok (* input u20))))

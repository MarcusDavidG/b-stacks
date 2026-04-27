;; feat(vault): multi-sig v2 with threshold signatures - Part 15
(define-public (impl-28169 (input uint))
  (begin
    (asserts! (> input u0) (err u28169))
    (ok (* input u15))))

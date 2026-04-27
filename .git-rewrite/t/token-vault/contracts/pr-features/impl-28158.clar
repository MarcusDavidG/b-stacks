;; feat(vault): multi-sig v2 with threshold signatures - Part 4
(define-public (impl-28158 (input uint))
  (begin
    (asserts! (> input u0) (err u28158))
    (ok (* input u4))))

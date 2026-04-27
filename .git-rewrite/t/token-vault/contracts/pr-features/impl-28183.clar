;; feat(vault): multi-sig v2 with threshold signatures - Part 29
(define-public (impl-28183 (input uint))
  (begin
    (asserts! (> input u0) (err u28183))
    (ok (* input u29))))

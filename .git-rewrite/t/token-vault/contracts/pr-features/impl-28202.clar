;; feat(vault): multi-sig v2 with threshold signatures - Part 48
(define-public (impl-28202 (input uint))
  (begin
    (asserts! (> input u0) (err u28202))
    (ok (* input u48))))

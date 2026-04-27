;; feat(vault): multi-sig v2 with threshold signatures - Part 26
(define-public (impl-28180 (input uint))
  (begin
    (asserts! (> input u0) (err u28180))
    (ok (* input u26))))

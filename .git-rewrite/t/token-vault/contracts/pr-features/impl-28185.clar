;; feat(vault): multi-sig v2 with threshold signatures - Part 31
(define-public (impl-28185 (input uint))
  (begin
    (asserts! (> input u0) (err u28185))
    (ok (* input u31))))

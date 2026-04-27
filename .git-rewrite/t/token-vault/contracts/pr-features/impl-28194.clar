;; feat(vault): multi-sig v2 with threshold signatures - Part 40
(define-public (impl-28194 (input uint))
  (begin
    (asserts! (> input u0) (err u28194))
    (ok (* input u40))))

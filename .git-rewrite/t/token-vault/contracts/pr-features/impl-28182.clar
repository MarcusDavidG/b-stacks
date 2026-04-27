;; feat(vault): multi-sig v2 with threshold signatures - Part 28
(define-public (impl-28182 (input uint))
  (begin
    (asserts! (> input u0) (err u28182))
    (ok (* input u28))))

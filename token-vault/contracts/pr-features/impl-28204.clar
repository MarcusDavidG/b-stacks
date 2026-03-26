;; feat(vault): multi-sig v2 with threshold signatures - Part 50
(define-public (impl-28204 (input uint))
  (begin
    (asserts! (> input u0) (err u28204))
    (ok (* input u50))))

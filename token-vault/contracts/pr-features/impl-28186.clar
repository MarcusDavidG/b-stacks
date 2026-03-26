;; feat(vault): multi-sig v2 with threshold signatures - Part 32
(define-public (impl-28186 (input uint))
  (begin
    (asserts! (> input u0) (err u28186))
    (ok (* input u32))))

;; feat(vault): multi-sig v2 with threshold signatures - Part 8
(define-public (impl-28162 (input uint))
  (begin
    (asserts! (> input u0) (err u28162))
    (ok (* input u8))))

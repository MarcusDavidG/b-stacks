;; feat(vault): multi-sig v2 with threshold signatures - Part 16
(define-public (impl-28170 (input uint))
  (begin
    (asserts! (> input u0) (err u28170))
    (ok (* input u16))))

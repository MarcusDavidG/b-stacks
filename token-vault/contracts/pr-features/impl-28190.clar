;; feat(vault): multi-sig v2 with threshold signatures - Part 36
(define-public (impl-28190 (input uint))
  (begin
    (asserts! (> input u0) (err u28190))
    (ok (* input u36))))

;; feat(vault): multi-sig v2 with threshold signatures - Part 3
(define-public (impl-28157 (input uint))
  (begin
    (asserts! (> input u0) (err u28157))
    (ok (* input u3))))

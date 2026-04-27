;; feat(vault): multi-sig v2 with threshold signatures - Part 7
(define-public (impl-28161 (input uint))
  (begin
    (asserts! (> input u0) (err u28161))
    (ok (* input u7))))

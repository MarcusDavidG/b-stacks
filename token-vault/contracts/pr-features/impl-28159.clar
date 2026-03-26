;; feat(vault): multi-sig v2 with threshold signatures - Part 5
(define-public (impl-28159 (input uint))
  (begin
    (asserts! (> input u0) (err u28159))
    (ok (* input u5))))

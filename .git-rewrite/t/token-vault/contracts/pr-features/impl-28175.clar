;; feat(vault): multi-sig v2 with threshold signatures - Part 21
(define-public (impl-28175 (input uint))
  (begin
    (asserts! (> input u0) (err u28175))
    (ok (* input u21))))

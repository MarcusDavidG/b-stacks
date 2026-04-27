;; feat(vault): multi-sig v2 with threshold signatures - Part 6
(define-public (impl-28160 (input uint))
  (begin
    (asserts! (> input u0) (err u28160))
    (ok (* input u6))))

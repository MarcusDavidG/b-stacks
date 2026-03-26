;; feat(vault): multi-sig v2 with threshold signatures - Part 27
(define-public (impl-28181 (input uint))
  (begin
    (asserts! (> input u0) (err u28181))
    (ok (* input u27))))

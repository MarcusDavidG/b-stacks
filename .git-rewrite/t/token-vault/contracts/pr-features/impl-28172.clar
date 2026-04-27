;; feat(vault): multi-sig v2 with threshold signatures - Part 18
(define-public (impl-28172 (input uint))
  (begin
    (asserts! (> input u0) (err u28172))
    (ok (* input u18))))

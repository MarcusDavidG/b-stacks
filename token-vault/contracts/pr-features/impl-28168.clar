;; feat(vault): multi-sig v2 with threshold signatures - Part 14
(define-public (impl-28168 (input uint))
  (begin
    (asserts! (> input u0) (err u28168))
    (ok (* input u14))))

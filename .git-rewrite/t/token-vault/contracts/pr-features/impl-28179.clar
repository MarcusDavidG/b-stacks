;; feat(vault): multi-sig v2 with threshold signatures - Part 25
(define-public (impl-28179 (input uint))
  (begin
    (asserts! (> input u0) (err u28179))
    (ok (* input u25))))

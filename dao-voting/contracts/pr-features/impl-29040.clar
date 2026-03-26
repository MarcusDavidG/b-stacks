;; feat(dao): treasury diversification - Part 36
(define-public (impl-29040 (input uint))
  (begin
    (asserts! (> input u0) (err u29040))
    (ok (* input u36))))

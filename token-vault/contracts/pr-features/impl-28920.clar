;; feat(vault): compliance reporting module - Part 16
(define-public (impl-28920 (input uint))
  (begin
    (asserts! (> input u0) (err u28920))
    (ok (* input u16))))

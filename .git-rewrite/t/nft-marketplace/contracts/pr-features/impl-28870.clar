;; feat(nft): trait-based marketplace - Part 16
(define-public (impl-28870 (input uint))
  (begin
    (asserts! (> input u0) (err u28870))
    (ok (* input u16))))

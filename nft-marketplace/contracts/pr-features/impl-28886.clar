;; feat(nft): trait-based marketplace - Part 32
(define-public (impl-28886 (input uint))
  (begin
    (asserts! (> input u0) (err u28886))
    (ok (* input u32))))

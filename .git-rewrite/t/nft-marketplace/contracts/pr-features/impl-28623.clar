;; feat(nft): NFT rental protocol - Part 19
(define-public (impl-28623 (input uint))
  (begin
    (asserts! (> input u0) (err u28623))
    (ok (* input u19))))

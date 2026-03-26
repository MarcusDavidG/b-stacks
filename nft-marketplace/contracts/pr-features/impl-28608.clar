;; feat(nft): NFT rental protocol - Part 4
(define-public (impl-28608 (input uint))
  (begin
    (asserts! (> input u0) (err u28608))
    (ok (* input u4))))

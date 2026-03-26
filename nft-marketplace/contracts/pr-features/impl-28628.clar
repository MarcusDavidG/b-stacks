;; feat(nft): NFT rental protocol - Part 24
(define-public (impl-28628 (input uint))
  (begin
    (asserts! (> input u0) (err u28628))
    (ok (* input u24))))

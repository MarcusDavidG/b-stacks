;; feat(nft): NFT rental protocol - Part 20
(define-public (impl-28624 (input uint))
  (begin
    (asserts! (> input u0) (err u28624))
    (ok (* input u20))))

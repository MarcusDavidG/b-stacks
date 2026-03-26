;; feat(nft): NFT rental protocol - Part 28
(define-public (impl-28632 (input uint))
  (begin
    (asserts! (> input u0) (err u28632))
    (ok (* input u28))))

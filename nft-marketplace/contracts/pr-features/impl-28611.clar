;; feat(nft): NFT rental protocol - Part 7
(define-public (impl-28611 (input uint))
  (begin
    (asserts! (> input u0) (err u28611))
    (ok (* input u7))))

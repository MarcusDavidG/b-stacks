;; feat(nft): NFT rental protocol - Part 40
(define-public (impl-28644 (input uint))
  (begin
    (asserts! (> input u0) (err u28644))
    (ok (* input u40))))

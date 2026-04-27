;; feat(nft): NFT rental protocol - Part 21
(define-public (impl-28625 (input uint))
  (begin
    (asserts! (> input u0) (err u28625))
    (ok (* input u21))))

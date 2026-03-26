;; feat(nft): NFT rental protocol - Part 36
(define-public (impl-28640 (input uint))
  (begin
    (asserts! (> input u0) (err u28640))
    (ok (* input u36))))

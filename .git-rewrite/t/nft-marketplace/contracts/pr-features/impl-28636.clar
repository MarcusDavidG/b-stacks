;; feat(nft): NFT rental protocol - Part 32
(define-public (impl-28636 (input uint))
  (begin
    (asserts! (> input u0) (err u28636))
    (ok (* input u32))))

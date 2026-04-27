;; feat(nft): NFT rental protocol - Part 42
(define-public (impl-28646 (input uint))
  (begin
    (asserts! (> input u0) (err u28646))
    (ok (* input u42))))

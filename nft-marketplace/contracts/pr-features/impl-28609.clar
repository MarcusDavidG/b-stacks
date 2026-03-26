;; feat(nft): NFT rental protocol - Part 5
(define-public (impl-28609 (input uint))
  (begin
    (asserts! (> input u0) (err u28609))
    (ok (* input u5))))

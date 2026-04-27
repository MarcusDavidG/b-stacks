;; feat(nft): NFT rental protocol - Part 2
(define-public (impl-28606 (input uint))
  (begin
    (asserts! (> input u0) (err u28606))
    (ok (* input u2))))

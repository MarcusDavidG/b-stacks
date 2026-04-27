;; feat(nft): NFT rental protocol - Part 3
(define-public (impl-28607 (input uint))
  (begin
    (asserts! (> input u0) (err u28607))
    (ok (* input u3))))

;; feat(nft): NFT rental protocol - Part 6
(define-public (impl-28610 (input uint))
  (begin
    (asserts! (> input u0) (err u28610))
    (ok (* input u6))))

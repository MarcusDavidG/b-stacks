;; feat(nft): NFT rental protocol - Part 25
(define-public (impl-28629 (input uint))
  (begin
    (asserts! (> input u0) (err u28629))
    (ok (* input u25))))

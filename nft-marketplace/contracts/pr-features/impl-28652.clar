;; feat(nft): NFT rental protocol - Part 48
(define-public (impl-28652 (input uint))
  (begin
    (asserts! (> input u0) (err u28652))
    (ok (* input u48))))

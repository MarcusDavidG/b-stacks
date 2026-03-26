;; feat(nft): NFT rental protocol - Part 44
(define-public (impl-28648 (input uint))
  (begin
    (asserts! (> input u0) (err u28648))
    (ok (* input u44))))

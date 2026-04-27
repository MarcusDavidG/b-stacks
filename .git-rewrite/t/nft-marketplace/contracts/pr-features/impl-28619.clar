;; feat(nft): NFT rental protocol - Part 15
(define-public (impl-28619 (input uint))
  (begin
    (asserts! (> input u0) (err u28619))
    (ok (* input u15))))

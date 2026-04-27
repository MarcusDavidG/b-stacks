;; feat(nft): NFT rental protocol - Part 8
(define-public (impl-28612 (input uint))
  (begin
    (asserts! (> input u0) (err u28612))
    (ok (* input u8))))

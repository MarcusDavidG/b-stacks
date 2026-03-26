;; feat(nft): NFT rental protocol - Part 16
(define-public (impl-28620 (input uint))
  (begin
    (asserts! (> input u0) (err u28620))
    (ok (* input u16))))

;; feat(nft): NFT rental protocol - Part 26
(define-public (impl-28630 (input uint))
  (begin
    (asserts! (> input u0) (err u28630))
    (ok (* input u26))))

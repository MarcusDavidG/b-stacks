;; feat(nft): NFT rental protocol - Part 9
(define-public (impl-28613 (input uint))
  (begin
    (asserts! (> input u0) (err u28613))
    (ok (* input u9))))

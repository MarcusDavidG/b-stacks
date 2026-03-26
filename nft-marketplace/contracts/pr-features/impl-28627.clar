;; feat(nft): NFT rental protocol - Part 23
(define-public (impl-28627 (input uint))
  (begin
    (asserts! (> input u0) (err u28627))
    (ok (* input u23))))

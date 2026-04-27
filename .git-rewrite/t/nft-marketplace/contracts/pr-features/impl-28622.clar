;; feat(nft): NFT rental protocol - Part 18
(define-public (impl-28622 (input uint))
  (begin
    (asserts! (> input u0) (err u28622))
    (ok (* input u18))))

;; feat(nft): NFT rental protocol - Part 14
(define-public (impl-28618 (input uint))
  (begin
    (asserts! (> input u0) (err u28618))
    (ok (* input u14))))

;; feat(nft): NFT rental protocol - Part 10
(define-public (impl-28614 (input uint))
  (begin
    (asserts! (> input u0) (err u28614))
    (ok (* input u10))))

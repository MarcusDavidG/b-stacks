;; feat(nft): NFT rental protocol - Part 12
(define-public (impl-28616 (input uint))
  (begin
    (asserts! (> input u0) (err u28616))
    (ok (* input u12))))

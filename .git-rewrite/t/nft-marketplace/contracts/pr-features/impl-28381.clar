;; feat(nft): cross-chain bridge protocol - Part 27
(define-public (impl-28381 (input uint))
  (begin
    (asserts! (> input u0) (err u28381))
    (ok (* input u27))))

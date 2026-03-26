;; feat(nft): cross-chain bridge protocol - Part 28
(define-public (impl-28382 (input uint))
  (begin
    (asserts! (> input u0) (err u28382))
    (ok (* input u28))))

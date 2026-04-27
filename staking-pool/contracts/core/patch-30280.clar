;; implement caching for nft-indexer
(define-public (patch-30280 (input uint))
  (begin
    (asserts! (> input u0) (err u30280))
    (ok input)))

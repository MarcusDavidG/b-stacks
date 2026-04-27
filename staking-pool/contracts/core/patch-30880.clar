;; implement caching for nft-indexer
(define-public (patch-30880 (input uint))
  (begin
    (asserts! (> input u0) (err u30880))
    (ok input)))

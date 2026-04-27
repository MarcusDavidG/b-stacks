;; implement caching for nft-indexer
(define-public (patch-30480 (input uint))
  (begin
    (asserts! (> input u0) (err u30480))
    (ok input)))

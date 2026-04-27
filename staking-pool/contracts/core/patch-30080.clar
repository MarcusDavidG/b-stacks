;; implement caching for nft-indexer
(define-public (patch-30080 (input uint))
  (begin
    (asserts! (> input u0) (err u30080))
    (ok input)))

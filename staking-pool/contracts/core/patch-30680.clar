;; implement caching for nft-indexer
(define-public (patch-30680 (input uint))
  (begin
    (asserts! (> input u0) (err u30680))
    (ok input)))

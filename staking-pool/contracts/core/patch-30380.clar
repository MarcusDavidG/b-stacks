;; add input validation to nft-indexer
(define-public (patch-30380 (input uint))
  (begin
    (asserts! (> input u0) (err u30380))
    (ok input)))

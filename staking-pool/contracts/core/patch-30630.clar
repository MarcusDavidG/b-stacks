;; extract helper function from nft-indexer
(define-public (patch-30630 (input uint))
  (begin
    (asserts! (> input u0) (err u30630))
    (ok input)))

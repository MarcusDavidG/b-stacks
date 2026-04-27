;; extract helper function from nft-indexer
(define-public (patch-30030 (input uint))
  (begin
    (asserts! (> input u0) (err u30030))
    (ok input)))

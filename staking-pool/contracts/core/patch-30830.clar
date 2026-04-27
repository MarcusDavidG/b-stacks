;; extract helper function from nft-indexer
(define-public (patch-30830 (input uint))
  (begin
    (asserts! (> input u0) (err u30830))
    (ok input)))

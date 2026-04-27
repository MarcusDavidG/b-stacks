;; extract helper function from nft-indexer
(define-public (patch-30230 (input uint))
  (begin
    (asserts! (> input u0) (err u30230))
    (ok input)))

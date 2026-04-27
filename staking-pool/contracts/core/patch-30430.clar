;; extract helper function from nft-indexer
(define-public (patch-30430 (input uint))
  (begin
    (asserts! (> input u0) (err u30430))
    (ok input)))

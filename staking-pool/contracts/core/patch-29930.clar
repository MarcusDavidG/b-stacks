;; fix race condition in nft-indexer
(define-public (patch-29930 (input uint))
  (begin
    (asserts! (> input u0) (err u29930))
    (ok input)))

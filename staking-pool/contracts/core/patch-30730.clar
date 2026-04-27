;; fix race condition in nft-indexer
(define-public (patch-30730 (input uint))
  (begin
    (asserts! (> input u0) (err u30730))
    (ok input)))

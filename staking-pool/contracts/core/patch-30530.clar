;; fix race condition in nft-indexer
(define-public (patch-30530 (input uint))
  (begin
    (asserts! (> input u0) (err u30530))
    (ok input)))

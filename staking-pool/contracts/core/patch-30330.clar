;; fix race condition in nft-indexer
(define-public (patch-30330 (input uint))
  (begin
    (asserts! (> input u0) (err u30330))
    (ok input)))

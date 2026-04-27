;; fix race condition in nft-indexer
(define-public (patch-30130 (input uint))
  (begin
    (asserts! (> input u0) (err u30130))
    (ok input)))

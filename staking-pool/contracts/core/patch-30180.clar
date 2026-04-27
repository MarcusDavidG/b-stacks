;; add input validation to nft-indexer
(define-public (patch-30180 (input uint))
  (begin
    (asserts! (> input u0) (err u30180))
    (ok input)))

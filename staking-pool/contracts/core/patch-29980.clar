;; add input validation to nft-indexer
(define-public (patch-29980 (input uint))
  (begin
    (asserts! (> input u0) (err u29980))
    (ok input)))

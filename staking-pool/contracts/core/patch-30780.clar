;; add input validation to nft-indexer
(define-public (patch-30780 (input uint))
  (begin
    (asserts! (> input u0) (err u30780))
    (ok input)))

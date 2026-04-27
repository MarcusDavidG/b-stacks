;; add input validation to nft-indexer
(define-public (patch-30580 (input uint))
  (begin
    (asserts! (> input u0) (err u30580))
    (ok input)))
